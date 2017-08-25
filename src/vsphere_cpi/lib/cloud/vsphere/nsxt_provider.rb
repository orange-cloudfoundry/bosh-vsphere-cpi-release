require 'pry-byebug'

module VSphereCloud
  class VirtualMachineNotFound < StandardError
    def initialize(vm_id)
      @vm_id = vm_id
    end

    def message
      "VM #{@vm_id} was expected in NSXT but was not found"
    end
  end

  class VIFNotFound < StandardError
    def initialize(vm_id, external_id)
      @vm_id = vm_id
      @external_id = external_id
    end

    def message
      "VIF for VM #{@vm_id} with 'external_id' #{@external_id} was expected in NSXT but was not found"
    end
  end

  class LogicalPortNotFound < StandardError
    def initialize(vm_id, external_id, lport_attachment_id)
      @vm_id = vm_id
      @external_id = external_id
      @lport_attachment_id = lport_attachment_id
    end

    def message
      "Logical port with attachment_id #{lport_attachment_id} for VIF for VM #{@vm_id} with 'external_id' #{@external_id} was expected in NSXT but was not found"
    end
  end

  class NSGroupsNotFound < StandardError
    def initialize(*display_names)
      @display_names = display_names
    end

    def message
      "NSGroups [#{@display_names.join(', ')}] was not found in NSXT"
    end
  end

  class NSXTProvider
    def initialize(config)
      @client = NSXT::Client.new(config.host, config.username, config.password)
    end

    def on_create_vm(vm_id, vm_type_nsxt)
      return if vm_type_nsxt.nil? || vm_type_nsxt['nsgroups'].nil?

      nsgroups_by_name = @client.nsgroups.each_with_object({}) do |nsgroup, hash|
        hash[nsgroup.display_name] = nsgroup
      end

      missing = vm_type_nsxt['nsgroups'].reject do |nsgroup_name|
        nsgroups_by_name.key?(nsgroup_name)
      end
      raise NSGroupsNotFound.new(*missing) unless missing.empty?

      nsgroups = vm_type_nsxt['nsgroups'].map(&nsgroups_by_name.method(:[]))

      virtual_machines = @client.virtual_machines(display_name: vm_id)
      if virtual_machines.empty?
        raise VirtualMachineNotFound.new(vm_id)
      end
      external_id = virtual_machines.first.external_id

      vifs = @client.vifs(owner_vm_id: external_id)
      if vifs.empty?
        raise VIFNotFound.new(vm_id, external_id)
      end
      lport_attachment_id = vifs.first.lport_attachment_id

      logical_ports = @client.logical_ports(attachment_id: lport_attachment_id)
      if logical_ports.empty?
        raise LogicalPortNotFound.new(vm_id, external_id, lport_attachment_id)
      end
      logical_port = logical_ports.first

      nsgroups.each { |nsgroup| nsgroup.add_member(logical_port) }
    end
  end
end