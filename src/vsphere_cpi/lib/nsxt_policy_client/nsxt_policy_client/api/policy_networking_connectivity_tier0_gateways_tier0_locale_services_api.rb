=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXTPolicy
  class PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create or update a Tier-0 locale-services
    # If a Tier-0 locale-services with the locale-services-id is not already present, create a new locale-services. If it already exists, replace the Tier-0 locale-services instance with the new object. 
    # @param tier_0_id 
    # @param locale_services_id 
    # @param locale_services 
    # @param [Hash] opts the optional parameters
    # @return [LocaleServices]
    def create_or_replace_tier0_locale_services(tier_0_id, locale_services_id, locale_services, opts = {})
      data, _status_code, _headers = create_or_replace_tier0_locale_services_with_http_info(tier_0_id, locale_services_id, locale_services, opts)
      data
    end

    # Create or update a Tier-0 locale-services
    # If a Tier-0 locale-services with the locale-services-id is not already present, create a new locale-services. If it already exists, replace the Tier-0 locale-services instance with the new object. 
    # @param tier_0_id 
    # @param locale_services_id 
    # @param locale_services 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LocaleServices, Fixnum, Hash)>] LocaleServices data, response status code and response headers
    def create_or_replace_tier0_locale_services_with_http_info(tier_0_id, locale_services_id, locale_services, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.create_or_replace_tier0_locale_services ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.create_or_replace_tier0_locale_services"
      end
      # verify the required parameter 'locale_services_id' is set
      if @api_client.config.client_side_validation && locale_services_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_services_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.create_or_replace_tier0_locale_services"
      end
      # verify the required parameter 'locale_services' is set
      if @api_client.config.client_side_validation && locale_services.nil?
        fail ArgumentError, "Missing the required parameter 'locale_services' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.create_or_replace_tier0_locale_services"
      end
      # resource path
      local_var_path = '/global-infra/tier-0s/{tier-0-id}/locale-services/{locale-services-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-services-id' + '}', locale_services_id.to_s)

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
      post_body = @api_client.object_to_http_body(locale_services)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LocaleServices')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi#create_or_replace_tier0_locale_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a Tier-0 locale-services
    # If a Tier-0 locale-services with the locale-services-id is not already present, create a new locale-services. If it already exists, replace the Tier-0 locale-services instance with the new object. 
    # @param tier_0_id 
    # @param locale_services_id 
    # @param locale_services 
    # @param [Hash] opts the optional parameters
    # @return [LocaleServices]
    def create_or_replace_tier0_locale_services_0(tier_0_id, locale_services_id, locale_services, opts = {})
      data, _status_code, _headers = create_or_replace_tier0_locale_services_0_with_http_info(tier_0_id, locale_services_id, locale_services, opts)
      data
    end

    # Create or update a Tier-0 locale-services
    # If a Tier-0 locale-services with the locale-services-id is not already present, create a new locale-services. If it already exists, replace the Tier-0 locale-services instance with the new object. 
    # @param tier_0_id 
    # @param locale_services_id 
    # @param locale_services 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LocaleServices, Fixnum, Hash)>] LocaleServices data, response status code and response headers
    def create_or_replace_tier0_locale_services_0_with_http_info(tier_0_id, locale_services_id, locale_services, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.create_or_replace_tier0_locale_services_0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.create_or_replace_tier0_locale_services_0"
      end
      # verify the required parameter 'locale_services_id' is set
      if @api_client.config.client_side_validation && locale_services_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_services_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.create_or_replace_tier0_locale_services_0"
      end
      # verify the required parameter 'locale_services' is set
      if @api_client.config.client_side_validation && locale_services.nil?
        fail ArgumentError, "Missing the required parameter 'locale_services' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.create_or_replace_tier0_locale_services_0"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-services-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-services-id' + '}', locale_services_id.to_s)

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
      post_body = @api_client.object_to_http_body(locale_services)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'LocaleServices')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi#create_or_replace_tier0_locale_services_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Tier-0 locale-services
    # Delete Tier-0 locale-services
    # @param tier_0_id 
    # @param locale_services_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tier0_locale_services(tier_0_id, locale_services_id, opts = {})
      delete_tier0_locale_services_with_http_info(tier_0_id, locale_services_id, opts)
      nil
    end

    # Delete Tier-0 locale-services
    # Delete Tier-0 locale-services
    # @param tier_0_id 
    # @param locale_services_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tier0_locale_services_with_http_info(tier_0_id, locale_services_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.delete_tier0_locale_services ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.delete_tier0_locale_services"
      end
      # verify the required parameter 'locale_services_id' is set
      if @api_client.config.client_side_validation && locale_services_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_services_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.delete_tier0_locale_services"
      end
      # resource path
      local_var_path = '/global-infra/tier-0s/{tier-0-id}/locale-services/{locale-services-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-services-id' + '}', locale_services_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi#delete_tier0_locale_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Tier-0 locale-services
    # Delete Tier-0 locale-services
    # @param tier_0_id 
    # @param locale_services_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tier0_locale_services_0(tier_0_id, locale_services_id, opts = {})
      delete_tier0_locale_services_0_with_http_info(tier_0_id, locale_services_id, opts)
      nil
    end

    # Delete Tier-0 locale-services
    # Delete Tier-0 locale-services
    # @param tier_0_id 
    # @param locale_services_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tier0_locale_services_0_with_http_info(tier_0_id, locale_services_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.delete_tier0_locale_services_0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.delete_tier0_locale_services_0"
      end
      # verify the required parameter 'locale_services_id' is set
      if @api_client.config.client_side_validation && locale_services_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_services_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.delete_tier0_locale_services_0"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-services-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-services-id' + '}', locale_services_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi#delete_tier0_locale_services_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Tier-0 locale-services
    # Paginated list of all Tier-0 locale-services 
    # @param tier_0_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [LocaleServicesListResult]
    def list_tier0_locale_services(tier_0_id, opts = {})
      data, _status_code, _headers = list_tier0_locale_services_with_http_info(tier_0_id, opts)
      data
    end

    # List Tier-0 locale-services
    # Paginated list of all Tier-0 locale-services 
    # @param tier_0_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(LocaleServicesListResult, Fixnum, Hash)>] LocaleServicesListResult data, response status code and response headers
    def list_tier0_locale_services_with_http_info(tier_0_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.list_tier0_locale_services ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.list_tier0_locale_services"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.list_tier0_locale_services, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.list_tier0_locale_services, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/tier-0s/{tier-0-id}/locale-services'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_mark_for_delete_objects'] = opts[:'include_mark_for_delete_objects'] if !opts[:'include_mark_for_delete_objects'].nil?
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
        :return_type => 'LocaleServicesListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi#list_tier0_locale_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Tier-0 locale-services
    # Paginated list of all Tier-0 locale-services 
    # @param tier_0_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [LocaleServicesListResult]
    def list_tier0_locale_services_0(tier_0_id, opts = {})
      data, _status_code, _headers = list_tier0_locale_services_0_with_http_info(tier_0_id, opts)
      data
    end

    # List Tier-0 locale-services
    # Paginated list of all Tier-0 locale-services 
    # @param tier_0_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(LocaleServicesListResult, Fixnum, Hash)>] LocaleServicesListResult data, response status code and response headers
    def list_tier0_locale_services_0_with_http_info(tier_0_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.list_tier0_locale_services_0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.list_tier0_locale_services_0"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.list_tier0_locale_services_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.list_tier0_locale_services_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_mark_for_delete_objects'] = opts[:'include_mark_for_delete_objects'] if !opts[:'include_mark_for_delete_objects'].nil?
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
        :return_type => 'LocaleServicesListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi#list_tier0_locale_services_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a tier-0 locale-services
    # If a Tier-0 locale-services with the locale-services-id is not already present, create a new locale-services. If it already exists, update Tier-0 locale-services with specified attributes. 
    # @param tier_0_id 
    # @param locale_services_id 
    # @param locale_services 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_tier0_locale_services(tier_0_id, locale_services_id, locale_services, opts = {})
      patch_tier0_locale_services_with_http_info(tier_0_id, locale_services_id, locale_services, opts)
      nil
    end

    # Create or update a tier-0 locale-services
    # If a Tier-0 locale-services with the locale-services-id is not already present, create a new locale-services. If it already exists, update Tier-0 locale-services with specified attributes. 
    # @param tier_0_id 
    # @param locale_services_id 
    # @param locale_services 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_tier0_locale_services_with_http_info(tier_0_id, locale_services_id, locale_services, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.patch_tier0_locale_services ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.patch_tier0_locale_services"
      end
      # verify the required parameter 'locale_services_id' is set
      if @api_client.config.client_side_validation && locale_services_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_services_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.patch_tier0_locale_services"
      end
      # verify the required parameter 'locale_services' is set
      if @api_client.config.client_side_validation && locale_services.nil?
        fail ArgumentError, "Missing the required parameter 'locale_services' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.patch_tier0_locale_services"
      end
      # resource path
      local_var_path = '/global-infra/tier-0s/{tier-0-id}/locale-services/{locale-services-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-services-id' + '}', locale_services_id.to_s)

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
      post_body = @api_client.object_to_http_body(locale_services)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi#patch_tier0_locale_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a tier-0 locale-services
    # If a Tier-0 locale-services with the locale-services-id is not already present, create a new locale-services. If it already exists, update Tier-0 locale-services with specified attributes. 
    # @param tier_0_id 
    # @param locale_services_id 
    # @param locale_services 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_tier0_locale_services_0(tier_0_id, locale_services_id, locale_services, opts = {})
      patch_tier0_locale_services_0_with_http_info(tier_0_id, locale_services_id, locale_services, opts)
      nil
    end

    # Create or update a tier-0 locale-services
    # If a Tier-0 locale-services with the locale-services-id is not already present, create a new locale-services. If it already exists, update Tier-0 locale-services with specified attributes. 
    # @param tier_0_id 
    # @param locale_services_id 
    # @param locale_services 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_tier0_locale_services_0_with_http_info(tier_0_id, locale_services_id, locale_services, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.patch_tier0_locale_services_0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.patch_tier0_locale_services_0"
      end
      # verify the required parameter 'locale_services_id' is set
      if @api_client.config.client_side_validation && locale_services_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_services_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.patch_tier0_locale_services_0"
      end
      # verify the required parameter 'locale_services' is set
      if @api_client.config.client_side_validation && locale_services.nil?
        fail ArgumentError, "Missing the required parameter 'locale_services' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.patch_tier0_locale_services_0"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-services-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-services-id' + '}', locale_services_id.to_s)

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
      post_body = @api_client.object_to_http_body(locale_services)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi#patch_tier0_locale_services_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read Tier-0 locale-services
    # Read Tier-0 locale-services
    # @param tier_0_id 
    # @param locale_services_id 
    # @param [Hash] opts the optional parameters
    # @return [LocaleServices]
    def read_tier0_locale_services(tier_0_id, locale_services_id, opts = {})
      data, _status_code, _headers = read_tier0_locale_services_with_http_info(tier_0_id, locale_services_id, opts)
      data
    end

    # Read Tier-0 locale-services
    # Read Tier-0 locale-services
    # @param tier_0_id 
    # @param locale_services_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LocaleServices, Fixnum, Hash)>] LocaleServices data, response status code and response headers
    def read_tier0_locale_services_with_http_info(tier_0_id, locale_services_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.read_tier0_locale_services ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.read_tier0_locale_services"
      end
      # verify the required parameter 'locale_services_id' is set
      if @api_client.config.client_side_validation && locale_services_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_services_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.read_tier0_locale_services"
      end
      # resource path
      local_var_path = '/global-infra/tier-0s/{tier-0-id}/locale-services/{locale-services-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-services-id' + '}', locale_services_id.to_s)

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
        :return_type => 'LocaleServices')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi#read_tier0_locale_services\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read Tier-0 locale-services
    # Read Tier-0 locale-services
    # @param tier_0_id 
    # @param locale_services_id 
    # @param [Hash] opts the optional parameters
    # @return [LocaleServices]
    def read_tier0_locale_services_0(tier_0_id, locale_services_id, opts = {})
      data, _status_code, _headers = read_tier0_locale_services_0_with_http_info(tier_0_id, locale_services_id, opts)
      data
    end

    # Read Tier-0 locale-services
    # Read Tier-0 locale-services
    # @param tier_0_id 
    # @param locale_services_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LocaleServices, Fixnum, Hash)>] LocaleServices data, response status code and response headers
    def read_tier0_locale_services_0_with_http_info(tier_0_id, locale_services_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.read_tier0_locale_services_0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.read_tier0_locale_services_0"
      end
      # verify the required parameter 'locale_services_id' is set
      if @api_client.config.client_side_validation && locale_services_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_services_id' when calling PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi.read_tier0_locale_services_0"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-services-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-services-id' + '}', locale_services_id.to_s)

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
        :return_type => 'LocaleServices')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivityTier0GatewaysTier0LocaleServicesApi#read_tier0_locale_services_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end