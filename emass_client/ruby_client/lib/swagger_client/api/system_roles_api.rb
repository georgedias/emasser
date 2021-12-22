=begin
#Enterprise Mission Assurance Support Service (eMASS)

#The Enterprise Mission Assurance Support Service (eMASS) Representational State Transfer (REST) Application Programming Interface (API) enables users to perform assessments and complete actions associated with system records. This command-line interface (CLI) tool implements all of the eMASS endpoints defined in the eMASS  REST API v3.2, dated October 21, 2021.</br><br>  <strong>Register CLI</strong></br> New users will need to register an API key with the eMASS development team prior to accessing the site for the first time. The eMASS REST API requires a client certificate (SSL/TLS, DoD PKI only) where {url}/api/register (POST) is used to register the client certificate.</br></br>  Every call to the eMASS REST API will require the use of the agreed upon public key certificate and API key. The API key must be provided in the request header for all endpoint calls (api-key). If the service receives an untrusted certificate or API key, a 401 error response code will be returned along with an error message.</br></br>  <strong>Available Request Headers:</strong></br> <table>   <tr>     <th align=left>key</th>     <th align=left>Example Value</th>     <th align=left>Description</th>   </tr>   <tr>     <td>`api-key`</td>     <td>api-key-provided-by-emass</td>     <td>This API key must be provided in the request header for all endpoint calls</td>   </tr>   <tr>     <td>`user-uid`</td>     <td>USER.UID.KEY</td>     <td>This User unique identifier key must be provided in the request header for all PUT, POST, and DELETE endpoint calls</td>   </tr>   <tr>     <td></td><td></td>     <td>       Note: For DoD users this is the DoD ID Number (EIDIPI) on their DoD CAC     </td>   </tr> </table>  </br><strong>Approve API Client for Actionable Requests</strong></br> Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions. Please note that leaving a field parameter blank (for PUT/POST requests) has the potential to clear information in the active eMASS records.  To establish an account with eMASS and/or acquire an api-key/user-uid, contact one of the listed POC: 

OpenAPI spec version: v3.2
Contact: disa.meade.id.mbx.emass-tier-iii-support@mail.mil
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.26
=end

module SwaggerClient
  class SystemRolesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get available roles
    # Returns all available roles
    # @param [Hash] opts the optional parameters
    # @return [SystemRolesResponse]
    def get_system_roles(opts = {})
      data, _status_code, _headers = get_system_roles_with_http_info(opts)
      data
    end

    # Get available roles
    # Returns all available roles
    # @param [Hash] opts the optional parameters
    # @return [Array<(SystemRolesResponse, Integer, Hash)>] SystemRolesResponse data, response status code and response headers
    def get_system_roles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemRolesApi.get_system_roles ...'
      end
      # resource path
      local_var_path = '/api/system-roles'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'SystemRolesResponse' 

      auth_names = opts[:auth_names] || ['apikey', 'userid']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemRolesApi#get_system_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get system roles
    # Returns the role(s) data matching parameters.
    # @param role_category **Role Category**: The system role category been queried
    # @param role **Role**: Required parameter. Accepts single value from available options.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :policy **System Policy**: Filter query by system policy. If no value is specified and more than one policy is available, the default return is the RMF policy information. (default to rmf)
    # @option opts [BOOLEAN] :include_decommissioned **Include Decommissioned Systems**: Indicates if decommissioned systems are retrieved. If no value is specified, the default returns true to include decommissioned systems. (default to true)
    # @return [SystemRolesCategoryResponse]
    def get_system_roles_by_category_id(role_category, role, opts = {})
      data, _status_code, _headers = get_system_roles_by_category_id_with_http_info(role_category, role, opts)
      data
    end

    # Get system roles
    # Returns the role(s) data matching parameters.
    # @param role_category **Role Category**: The system role category been queried
    # @param role **Role**: Required parameter. Accepts single value from available options.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :policy **System Policy**: Filter query by system policy. If no value is specified and more than one policy is available, the default return is the RMF policy information.
    # @option opts [BOOLEAN] :include_decommissioned **Include Decommissioned Systems**: Indicates if decommissioned systems are retrieved. If no value is specified, the default returns true to include decommissioned systems.
    # @return [Array<(SystemRolesCategoryResponse, Integer, Hash)>] SystemRolesCategoryResponse data, response status code and response headers
    def get_system_roles_by_category_id_with_http_info(role_category, role, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemRolesApi.get_system_roles_by_category_id ...'
      end
      # verify the required parameter 'role_category' is set
      if @api_client.config.client_side_validation && role_category.nil?
        fail ArgumentError, "Missing the required parameter 'role_category' when calling SystemRolesApi.get_system_roles_by_category_id"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['CAC', 'PAC', 'Other'].include?(role_category)
        fail ArgumentError, "invalid value for 'role_category', must be one of CAC, PAC, Other"
      end
      # verify the required parameter 'role' is set
      if @api_client.config.client_side_validation && role.nil?
        fail ArgumentError, "Missing the required parameter 'role' when calling SystemRolesApi.get_system_roles_by_category_id"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['AO', 'Auditor', 'Artifact Manager', 'C&A Team', 'IAO', 'ISSO', 'PM/IAM', 'SCA', 'User Rep', 'Validator'].include?(role)
        fail ArgumentError, "invalid value for 'role', must be one of AO, Auditor, Artifact Manager, C&A Team, IAO, ISSO, PM/IAM, SCA, User Rep, Validator"
      end
      if @api_client.config.client_side_validation && opts[:'policy'] && !['diacap', 'rmf', 'reporting'].include?(opts[:'policy'])
        fail ArgumentError, 'invalid value for "policy", must be one of diacap, rmf, reporting'
      end
      # resource path
      local_var_path = '/api/system-roles/{roleCategory}'.sub('{' + 'roleCategory' + '}', role_category.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'role'] = role
      query_params[:'policy'] = opts[:'policy'] if !opts[:'policy'].nil?
      query_params[:'includeDecommissioned'] = opts[:'include_decommissioned'] if !opts[:'include_decommissioned'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'SystemRolesCategoryResponse' 

      auth_names = opts[:auth_names] || ['apikey', 'userid']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemRolesApi#get_system_roles_by_category_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
