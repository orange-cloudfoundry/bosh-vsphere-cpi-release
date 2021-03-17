=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiFabricContainerApplicationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return a Container Application within a container project
    # Returns information about a specific Container Application within a project.
    # @param container_application_id 
    # @param [Hash] opts the optional parameters
    # @return [ContainerApplication]
    def get_container_application(container_application_id, opts = {})
      data, _status_code, _headers = get_container_application_with_http_info(container_application_id, opts)
      data
    end

    # Return a Container Application within a container project
    # Returns information about a specific Container Application within a project.
    # @param container_application_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContainerApplication, Fixnum, Hash)>] ContainerApplication data, response status code and response headers
    def get_container_application_with_http_info(container_application_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricContainerApplicationsApi.get_container_application ...'
      end
      # verify the required parameter 'container_application_id' is set
      if @api_client.config.client_side_validation && container_application_id.nil?
        fail ArgumentError, "Missing the required parameter 'container_application_id' when calling ManagementPlaneApiFabricContainerApplicationsApi.get_container_application"
      end
      # resource path
      local_var_path = '/fabric/container-applications/{container-application-id}'.sub('{' + 'container-application-id' + '}', container_application_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ContainerApplication')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricContainerApplicationsApi#get_container_application\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return a container application instance
    # Returns information about a specific container application instance.
    # @param container_application_instance_id 
    # @param [Hash] opts the optional parameters
    # @return [ContainerApplicationInstance]
    def get_container_application_instance(container_application_instance_id, opts = {})
      data, _status_code, _headers = get_container_application_instance_with_http_info(container_application_instance_id, opts)
      data
    end

    # Return a container application instance
    # Returns information about a specific container application instance.
    # @param container_application_instance_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ContainerApplicationInstance, Fixnum, Hash)>] ContainerApplicationInstance data, response status code and response headers
    def get_container_application_instance_with_http_info(container_application_instance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricContainerApplicationsApi.get_container_application_instance ...'
      end
      # verify the required parameter 'container_application_instance_id' is set
      if @api_client.config.client_side_validation && container_application_instance_id.nil?
        fail ArgumentError, "Missing the required parameter 'container_application_instance_id' when calling ManagementPlaneApiFabricContainerApplicationsApi.get_container_application_instance"
      end
      # resource path
      local_var_path = '/fabric/container-application-instances/{container-application-instance-id}'.sub('{' + 'container-application-instance-id' + '}', container_application_instance_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ContainerApplicationInstance')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricContainerApplicationsApi#get_container_application_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return the list of container application instance
    # Returns information about all container application instance.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :container_application_id Identifier of the container application
    # @option opts [String] :container_cluster_id Identifier of the container cluster
    # @option opts [String] :container_project_id Identifier of the container project
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [ContainerApplicationInstanceListResult]
    def list_container_application_instances(opts = {})
      data, _status_code, _headers = list_container_application_instances_with_http_info(opts)
      data
    end

    # Return the list of container application instance
    # Returns information about all container application instance.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :container_application_id Identifier of the container application
    # @option opts [String] :container_cluster_id Identifier of the container cluster
    # @option opts [String] :container_project_id Identifier of the container project
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(ContainerApplicationInstanceListResult, Fixnum, Hash)>] ContainerApplicationInstanceListResult data, response status code and response headers
    def list_container_application_instances_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricContainerApplicationsApi.list_container_application_instances ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiFabricContainerApplicationsApi.list_container_application_instances, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiFabricContainerApplicationsApi.list_container_application_instances, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/fabric/container-application-instances'

      # query parameters
      query_params = {}
      query_params[:'container_application_id'] = opts[:'container_application_id'] if !opts[:'container_application_id'].nil?
      query_params[:'container_cluster_id'] = opts[:'container_cluster_id'] if !opts[:'container_cluster_id'].nil?
      query_params[:'container_project_id'] = opts[:'container_project_id'] if !opts[:'container_project_id'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ContainerApplicationInstanceListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricContainerApplicationsApi#list_container_application_instances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return the List of Container Applications
    # Returns information about all Container Applications.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :container_cluster_id Identifier of the container cluster
    # @option opts [String] :container_project_id Identifier of the container project
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [ContainerApplicationListResult]
    def list_container_applications(opts = {})
      data, _status_code, _headers = list_container_applications_with_http_info(opts)
      data
    end

    # Return the List of Container Applications
    # Returns information about all Container Applications.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :container_cluster_id Identifier of the container cluster
    # @option opts [String] :container_project_id Identifier of the container project
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(ContainerApplicationListResult, Fixnum, Hash)>] ContainerApplicationListResult data, response status code and response headers
    def list_container_applications_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiFabricContainerApplicationsApi.list_container_applications ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiFabricContainerApplicationsApi.list_container_applications, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiFabricContainerApplicationsApi.list_container_applications, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/fabric/container-applications'

      # query parameters
      query_params = {}
      query_params[:'container_cluster_id'] = opts[:'container_cluster_id'] if !opts[:'container_cluster_id'].nil?
      query_params[:'container_project_id'] = opts[:'container_project_id'] if !opts[:'container_project_id'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ContainerApplicationListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiFabricContainerApplicationsApi#list_container_applications\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end