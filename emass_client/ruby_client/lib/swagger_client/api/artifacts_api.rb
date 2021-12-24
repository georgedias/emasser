=begin
#Enterprise Mission Assurance Support Service (eMASS)

#The Enterprise Mission Assurance Support Service (eMASS) Representational State Transfer (REST) Application Programming Interface (API) enables users to perform assessments and complete actions associated with system records.   The `emasser` is a command-line interface (CLI) tool that implements all of the  eMASS endpoints defined in the eMASS REST API v3.2, dated October 21, 2021.</br><br>  <strong>Register CLI</strong></br> New users will need to register an API key with the eMASS development team prior to accessing the site for the first time. The eMASS REST API requires a client certificate (SSL/TLS, DoD PKI only) where {url}/api/register (POST) is used to register the client certificate.</br></br>  Every call to the eMASS REST API will require the use of the agreed upon public key certificate and API key. The API key must be provided in the request header for all endpoint calls (api-key). If the service receives an untrusted certificate or API key, a 401 error response code will be returned along with an error message.</br></br>  <strong>Available Request Headers:</strong></br> <table>   <tr>     <th align=left>key</th>     <th align=left>Example Value</th>     <th align=left>Description</th>   </tr>   <tr>     <td>`api-key`</td>     <td>api-key-provided-by-emass</td>     <td>This API key must be provided in the request header for all endpoint calls</td>   </tr>   <tr>     <td>`user-uid`</td>     <td>USER.UID.KEY</td>     <td>This User unique identifier key must be provided in the request header for all PUT, POST, and DELETE endpoint calls</td>   </tr>   <tr>     <td></td><td></td>     <td>       Note: For DoD users this is the DoD ID Number (EIDIPI) on their DoD CAC     </td>   </tr> </table>  </br><strong>Approve API Client for Actionable Requests</strong></br> Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions. Please note that leaving a field parameter blank (for PUT/POST requests) has the potential to clear information in the active eMASS records.  To establish an account with eMASS and/or acquire an api-key/user-uid, contact one of the listed POC: 

OpenAPI spec version: v3.2
Contact: disa.meade.id.mbx.emass-tier-iii-support@mail.mil
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.26
=end

module SwaggerClient
  class ArtifactsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add one or many artifacts in a system
    # <strong>Information</strong><br> The request body of a POST request through the Artifact Endpoint accepts a single binary file with file extension \".zip\" only. This accepted .zip file should contain one or more files corresponding to existing artifacts or new artifacts that will be created upon successful receipt. Filename uniqueness throughout eMASS will be enforced by the API.<br><br> Upon successful receipt of a file, if a file within the .zip is matched via filename to an artifact existing within the application, the file associated with the artifact will be updated. If no artifact is matched via filename to the application, a new artifact will be created with the following default values. Any values not specified below will be blank. <ul>   <li>isTemplate: false</li>   <li>type: other</li>   <li>category: evidence</li> </ul> To update values other than the file itself, please submit a PUT request.<br>  <strong>Zip file information</strong><br> Upload a zip file contain one or more files corresponding to existing artifacts or new artifacts that will be created upon successful receipt.<br><br> <strong>Business Rules</strong><br> Artifact cannot be saved if the file does not have the following file extensions:      .docx,.doc,.txt,.rtf,.xfdl,.xml,.mht,.mh,tml,.html,.htm,.pdf,.mdb,.accdb,.ppt,     .pptx,.xls,.xlsx,.csv,.log,.jpeg,.jpg,.tiff,.bmp,.tif,.png,.gif,.zip,.rar,.msg,     .vsd,.vsw,.vdx,.z{#},.ckl,.avi,.vsdx  Artifact version cannot be saved if an Artifact with the same file name already exist in the system.  Artifact cannot be saved if the file size exceeds 30MB.
    # @param is_template 
    # @param type 
    # @param category 
    # @param zipper 
    # @param system_id **System Id**: The unique system record identifier.
    # @param [Hash] opts the optional parameters
    # @return [ArtifactsResponsePutPost]
    def add_artifacts_by_system_id(is_template, type, category, zipper, system_id, opts = {})
      data, _status_code, _headers = add_artifacts_by_system_id_with_http_info(is_template, type, category, zipper, system_id, opts)
      data
    end

    # Add one or many artifacts in a system
    # &lt;strong&gt;Information&lt;/strong&gt;&lt;br&gt; The request body of a POST request through the Artifact Endpoint accepts a single binary file with file extension \&quot;.zip\&quot; only. This accepted .zip file should contain one or more files corresponding to existing artifacts or new artifacts that will be created upon successful receipt. Filename uniqueness throughout eMASS will be enforced by the API.&lt;br&gt;&lt;br&gt; Upon successful receipt of a file, if a file within the .zip is matched via filename to an artifact existing within the application, the file associated with the artifact will be updated. If no artifact is matched via filename to the application, a new artifact will be created with the following default values. Any values not specified below will be blank. &lt;ul&gt;   &lt;li&gt;isTemplate: false&lt;/li&gt;   &lt;li&gt;type: other&lt;/li&gt;   &lt;li&gt;category: evidence&lt;/li&gt; &lt;/ul&gt; To update values other than the file itself, please submit a PUT request.&lt;br&gt;  &lt;strong&gt;Zip file information&lt;/strong&gt;&lt;br&gt; Upload a zip file contain one or more files corresponding to existing artifacts or new artifacts that will be created upon successful receipt.&lt;br&gt;&lt;br&gt; &lt;strong&gt;Business Rules&lt;/strong&gt;&lt;br&gt; Artifact cannot be saved if the file does not have the following file extensions:      .docx,.doc,.txt,.rtf,.xfdl,.xml,.mht,.mh,tml,.html,.htm,.pdf,.mdb,.accdb,.ppt,     .pptx,.xls,.xlsx,.csv,.log,.jpeg,.jpg,.tiff,.bmp,.tif,.png,.gif,.zip,.rar,.msg,     .vsd,.vsw,.vdx,.z{#},.ckl,.avi,.vsdx  Artifact version cannot be saved if an Artifact with the same file name already exist in the system.  Artifact cannot be saved if the file size exceeds 30MB.
    # @param is_template 
    # @param type 
    # @param category 
    # @param zipper 
    # @param system_id **System Id**: The unique system record identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ArtifactsResponsePutPost, Integer, Hash)>] ArtifactsResponsePutPost data, response status code and response headers
    def add_artifacts_by_system_id_with_http_info(is_template, type, category, zipper, system_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArtifactsApi.add_artifacts_by_system_id ...'
      end
      # verify the required parameter 'is_template' is set
      if @api_client.config.client_side_validation && is_template.nil?
        fail ArgumentError, "Missing the required parameter 'is_template' when calling ArtifactsApi.add_artifacts_by_system_id"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling ArtifactsApi.add_artifacts_by_system_id"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Procedure', 'Diagram', 'Policy', 'Labor', 'Document', 'Image', 'Other', 'Scan Result', 'Auditor Report'].include?(type)
        fail ArgumentError, "invalid value for 'type', must be one of Procedure, Diagram, Policy, Labor, Document, Image, Other, Scan Result, Auditor Report"
      end
      # verify the required parameter 'category' is set
      if @api_client.config.client_side_validation && category.nil?
        fail ArgumentError, "Missing the required parameter 'category' when calling ArtifactsApi.add_artifacts_by_system_id"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['Implementation Guidance', 'Evidence'].include?(category)
        fail ArgumentError, "invalid value for 'category', must be one of Implementation Guidance, Evidence"
      end
      # verify the required parameter 'zipper' is set
      if @api_client.config.client_side_validation && zipper.nil?
        fail ArgumentError, "Missing the required parameter 'zipper' when calling ArtifactsApi.add_artifacts_by_system_id"
      end
      # verify the required parameter 'system_id' is set
      if @api_client.config.client_side_validation && system_id.nil?
        fail ArgumentError, "Missing the required parameter 'system_id' when calling ArtifactsApi.add_artifacts_by_system_id"
      end
      # resource path
      local_var_path = '/api/systems/{systemId}/artifacts'.sub('{' + 'systemId' + '}', system_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['isTemplate'] = is_template
      form_params['type'] = type
      form_params['category'] = category
      form_params['Zipper'] = zipper

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ArtifactsResponsePutPost' 

      auth_names = opts[:auth_names] || ['apikey', 'mockType', 'userid']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArtifactsApi#add_artifacts_by_system_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove one or many artifacts in a system
    # Remove the Artifact(s) matching `systemId` path parameter and request body artifact(s) file name<br><br> <b>Note:</b> Multiple files can be deleted by providing multiple file names at the CL (comma delimited)  Example: --files file1.txt, file2.txt
    # @param body See notes above for additional information
    # @param system_id **System Id**: The unique system record identifier.
    # @param [Hash] opts the optional parameters
    # @return [ArtifactsResponseDel]
    def delete_artifact(body, system_id, opts = {})
      data, _status_code, _headers = delete_artifact_with_http_info(body, system_id, opts)
      data
    end

    # Remove one or many artifacts in a system
    # Remove the Artifact(s) matching &#x60;systemId&#x60; path parameter and request body artifact(s) file name&lt;br&gt;&lt;br&gt; &lt;b&gt;Note:&lt;/b&gt; Multiple files can be deleted by providing multiple file names at the CL (comma delimited)  Example: --files file1.txt, file2.txt
    # @param body See notes above for additional information
    # @param system_id **System Id**: The unique system record identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ArtifactsResponseDel, Integer, Hash)>] ArtifactsResponseDel data, response status code and response headers
    def delete_artifact_with_http_info(body, system_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArtifactsApi.delete_artifact ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ArtifactsApi.delete_artifact"
      end
      # verify the required parameter 'system_id' is set
      if @api_client.config.client_side_validation && system_id.nil?
        fail ArgumentError, "Missing the required parameter 'system_id' when calling ArtifactsApi.delete_artifact"
      end
      # resource path
      local_var_path = '/api/systems/{systemId}/artifacts'.sub('{' + 'systemId' + '}', system_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'ArtifactsResponseDel' 

      auth_names = opts[:auth_names] || ['apikey', 'mockType', 'userid']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArtifactsApi#delete_artifact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get one or many artifacts in a system
    # Returns selected artifacts matching parameters to include the file name containing the artifacts.
    # @param system_id **System Id**: The unique system record identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filename **File Name**: The file name (to include file-extension).
    # @option opts [String] :control_acronyms **System Acronym**: Filter query by given system acronym (single or comma separated).
    # @option opts [String] :ccis **CCI System**: Filter query by Control Correlation Identifiers (CCIs).
    # @option opts [BOOLEAN] :system_only **Systems Only**: Indicates that only system(s) information is retrieved. (default to true)
    # @return [ArtifactsResponseGet]
    def get_system_artifacts(system_id, opts = {})
      data, _status_code, _headers = get_system_artifacts_with_http_info(system_id, opts)
      data
    end

    # Get one or many artifacts in a system
    # Returns selected artifacts matching parameters to include the file name containing the artifacts.
    # @param system_id **System Id**: The unique system record identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filename **File Name**: The file name (to include file-extension).
    # @option opts [String] :control_acronyms **System Acronym**: Filter query by given system acronym (single or comma separated).
    # @option opts [String] :ccis **CCI System**: Filter query by Control Correlation Identifiers (CCIs).
    # @option opts [BOOLEAN] :system_only **Systems Only**: Indicates that only system(s) information is retrieved.
    # @return [Array<(ArtifactsResponseGet, Integer, Hash)>] ArtifactsResponseGet data, response status code and response headers
    def get_system_artifacts_with_http_info(system_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArtifactsApi.get_system_artifacts ...'
      end
      # verify the required parameter 'system_id' is set
      if @api_client.config.client_side_validation && system_id.nil?
        fail ArgumentError, "Missing the required parameter 'system_id' when calling ArtifactsApi.get_system_artifacts"
      end
      # resource path
      local_var_path = '/api/systems/{systemId}/artifacts'.sub('{' + 'systemId' + '}', system_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filename'] = opts[:'filename'] if !opts[:'filename'].nil?
      query_params[:'controlAcronyms'] = opts[:'control_acronyms'] if !opts[:'control_acronyms'].nil?
      query_params[:'ccis'] = opts[:'ccis'] if !opts[:'ccis'].nil?
      query_params[:'systemOnly'] = opts[:'system_only'] if !opts[:'system_only'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ArtifactsResponseGet' 

      auth_names = opts[:auth_names] || ['apikey', 'mockType', 'userid']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArtifactsApi#get_system_artifacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update one or many artifacts in a system
    # Updates an artifact for given `systemId` path parameter<br><br>  **Request Body Required Fields** - `filename` - `isTemplate` - `type` - `category`
    # @param body See &#x60;information&#x60; above for additional instructions
    # @param system_id **System Id**: The unique system record identifier.
    # @param [Hash] opts the optional parameters
    # @return [ArtifactsResponsePutPost]
    def update_artifact_by_system_id(body, system_id, opts = {})
      data, _status_code, _headers = update_artifact_by_system_id_with_http_info(body, system_id, opts)
      data
    end

    # Update one or many artifacts in a system
    # Updates an artifact for given &#x60;systemId&#x60; path parameter&lt;br&gt;&lt;br&gt;  **Request Body Required Fields** - &#x60;filename&#x60; - &#x60;isTemplate&#x60; - &#x60;type&#x60; - &#x60;category&#x60;
    # @param body See &#x60;information&#x60; above for additional instructions
    # @param system_id **System Id**: The unique system record identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ArtifactsResponsePutPost, Integer, Hash)>] ArtifactsResponsePutPost data, response status code and response headers
    def update_artifact_by_system_id_with_http_info(body, system_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArtifactsApi.update_artifact_by_system_id ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling ArtifactsApi.update_artifact_by_system_id"
      end
      # verify the required parameter 'system_id' is set
      if @api_client.config.client_side_validation && system_id.nil?
        fail ArgumentError, "Missing the required parameter 'system_id' when calling ArtifactsApi.update_artifact_by_system_id"
      end
      # resource path
      local_var_path = '/api/systems/{systemId}/artifacts'.sub('{' + 'systemId' + '}', system_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'ArtifactsResponsePutPost' 

      auth_names = opts[:auth_names] || ['apikey', 'mockType', 'userid']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArtifactsApi#update_artifact_by_system_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
