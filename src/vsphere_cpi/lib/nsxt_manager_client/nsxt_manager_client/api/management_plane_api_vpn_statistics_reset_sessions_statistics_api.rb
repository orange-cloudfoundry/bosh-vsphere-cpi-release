=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiVpnStatisticsResetSessionsStatisticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Reset the statistics of the given VPN session
    # Reset the statistics of the given VPN session.
    # @param session_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def reset_ip_sec_vpn_session_statistics_reset(session_id, opts = {})
      reset_ip_sec_vpn_session_statistics_reset_with_http_info(session_id, opts)
      nil
    end

    # Reset the statistics of the given VPN session
    # Reset the statistics of the given VPN session.
    # @param session_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def reset_ip_sec_vpn_session_statistics_reset_with_http_info(session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiVpnStatisticsResetSessionsStatisticsApi.reset_ip_sec_vpn_session_statistics_reset ...'
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling ManagementPlaneApiVpnStatisticsResetSessionsStatisticsApi.reset_ip_sec_vpn_session_statistics_reset"
      end
      # resource path
      local_var_path = '/vpn/ipsec/sessions/{session-id}/statistics?action=reset'.sub('{' + 'session-id' + '}', session_id.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiVpnStatisticsResetSessionsStatisticsApi#reset_ip_sec_vpn_session_statistics_reset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end