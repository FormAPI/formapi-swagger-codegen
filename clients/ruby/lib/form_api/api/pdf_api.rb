=begin
#API V1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

OpenAPI spec version: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.0-SNAPSHOT

=end

require 'uri'

module FormAPI
  class PDFApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generates multiple PDFs
    # @param template_id 
    # @param create_submission_data 
    # @param [Hash] opts the optional parameters
    # @return [Array<CreateSubmissionResponse>]
    def batch_generate_pdf_v1(template_id, create_submission_data, opts = {})
      data, _status_code, _headers = batch_generate_pdf_v1_with_http_info(template_id, create_submission_data, opts)
      data
    end

    # Generates multiple PDFs
    # @param template_id 
    # @param create_submission_data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<CreateSubmissionResponse>, Fixnum, Hash)>] Array<CreateSubmissionResponse> data, response status code and response headers
    def batch_generate_pdf_v1_with_http_info(template_id, create_submission_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PDFApi.batch_generate_pdf_v1 ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling PDFApi.batch_generate_pdf_v1"
      end
      # verify the required parameter 'create_submission_data' is set
      if @api_client.config.client_side_validation && create_submission_data.nil?
        fail ArgumentError, "Missing the required parameter 'create_submission_data' when calling PDFApi.batch_generate_pdf_v1"
      end
      # resource path
      local_var_path = '/templates/{template_id}/submissions/batch'.sub('{' + 'template_id' + '}', template_id.to_s)

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
      post_body = @api_client.object_to_http_body(create_submission_data)
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<CreateSubmissionResponse>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#batch_generate_pdf_v1\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generates multiple PDFs
    # @param submission_batch_data 
    # @param [Hash] opts the optional parameters
    # @return [CreateSubmissionBatchResponse]
    def batch_generate_pdfs(submission_batch_data, opts = {})
      data, _status_code, _headers = batch_generate_pdfs_with_http_info(submission_batch_data, opts)
      data
    end

    # Generates multiple PDFs
    # @param submission_batch_data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateSubmissionBatchResponse, Fixnum, Hash)>] CreateSubmissionBatchResponse data, response status code and response headers
    def batch_generate_pdfs_with_http_info(submission_batch_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PDFApi.batch_generate_pdfs ...'
      end
      # verify the required parameter 'submission_batch_data' is set
      if @api_client.config.client_side_validation && submission_batch_data.nil?
        fail ArgumentError, "Missing the required parameter 'submission_batch_data' when calling PDFApi.batch_generate_pdfs"
      end
      # resource path
      local_var_path = '/submissions/batches'

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
      post_body = @api_client.object_to_http_body(submission_batch_data)
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateSubmissionBatchResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#batch_generate_pdfs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Merge generated PDFs together
    # @param combined_submission_data 
    # @param [Hash] opts the optional parameters
    # @return [CreateCombinedSubmissionResponse]
    def combine_submissions(combined_submission_data, opts = {})
      data, _status_code, _headers = combine_submissions_with_http_info(combined_submission_data, opts)
      data
    end

    # Merge generated PDFs together
    # @param combined_submission_data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateCombinedSubmissionResponse, Fixnum, Hash)>] CreateCombinedSubmissionResponse data, response status code and response headers
    def combine_submissions_with_http_info(combined_submission_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PDFApi.combine_submissions ...'
      end
      # verify the required parameter 'combined_submission_data' is set
      if @api_client.config.client_side_validation && combined_submission_data.nil?
        fail ArgumentError, "Missing the required parameter 'combined_submission_data' when calling PDFApi.combine_submissions"
      end
      # resource path
      local_var_path = '/combined_submissions'

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
      post_body = @api_client.object_to_http_body(combined_submission_data)
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateCombinedSubmissionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#combine_submissions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Expire a combined submission
    # @param combined_submission_id 
    # @param [Hash] opts the optional parameters
    # @return [CombinedSubmission]
    def expire_combined_submission(combined_submission_id, opts = {})
      data, _status_code, _headers = expire_combined_submission_with_http_info(combined_submission_id, opts)
      data
    end

    # Expire a combined submission
    # @param combined_submission_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CombinedSubmission, Fixnum, Hash)>] CombinedSubmission data, response status code and response headers
    def expire_combined_submission_with_http_info(combined_submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PDFApi.expire_combined_submission ...'
      end
      # verify the required parameter 'combined_submission_id' is set
      if @api_client.config.client_side_validation && combined_submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'combined_submission_id' when calling PDFApi.expire_combined_submission"
      end
      # resource path
      local_var_path = '/combined_submissions/{combined_submission_id}'.sub('{' + 'combined_submission_id' + '}', combined_submission_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CombinedSubmission')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#expire_combined_submission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Expire a PDF submission
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @return [Submission]
    def expire_submission(submission_id, opts = {})
      data, _status_code, _headers = expire_submission_with_http_info(submission_id, opts)
      data
    end

    # Expire a PDF submission
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Submission, Fixnum, Hash)>] Submission data, response status code and response headers
    def expire_submission_with_http_info(submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PDFApi.expire_submission ...'
      end
      # verify the required parameter 'submission_id' is set
      if @api_client.config.client_side_validation && submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'submission_id' when calling PDFApi.expire_submission"
      end
      # resource path
      local_var_path = '/submissions/{submission_id}'.sub('{' + 'submission_id' + '}', submission_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Submission')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#expire_submission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generates a new PDF
    # @param template_id 
    # @param create_submission_data 
    # @param [Hash] opts the optional parameters
    # @return [CreateSubmissionResponse]
    def generate_pdf(template_id, create_submission_data, opts = {})
      data, _status_code, _headers = generate_pdf_with_http_info(template_id, create_submission_data, opts)
      data
    end

    # Generates a new PDF
    # @param template_id 
    # @param create_submission_data 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateSubmissionResponse, Fixnum, Hash)>] CreateSubmissionResponse data, response status code and response headers
    def generate_pdf_with_http_info(template_id, create_submission_data, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PDFApi.generate_pdf ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling PDFApi.generate_pdf"
      end
      # verify the required parameter 'create_submission_data' is set
      if @api_client.config.client_side_validation && create_submission_data.nil?
        fail ArgumentError, "Missing the required parameter 'create_submission_data' when calling PDFApi.generate_pdf"
      end
      # resource path
      local_var_path = '/templates/{template_id}/submissions'.sub('{' + 'template_id' + '}', template_id.to_s)

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
      post_body = @api_client.object_to_http_body(create_submission_data)
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreateSubmissionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#generate_pdf\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the status of a combined submission (merged PDFs)
    # @param combined_submission_id 
    # @param [Hash] opts the optional parameters
    # @return [CombinedSubmission]
    def get_combined_submission(combined_submission_id, opts = {})
      data, _status_code, _headers = get_combined_submission_with_http_info(combined_submission_id, opts)
      data
    end

    # Check the status of a combined submission (merged PDFs)
    # @param combined_submission_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CombinedSubmission, Fixnum, Hash)>] CombinedSubmission data, response status code and response headers
    def get_combined_submission_with_http_info(combined_submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PDFApi.get_combined_submission ...'
      end
      # verify the required parameter 'combined_submission_id' is set
      if @api_client.config.client_side_validation && combined_submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'combined_submission_id' when calling PDFApi.get_combined_submission"
      end
      # resource path
      local_var_path = '/combined_submissions/{combined_submission_id}'.sub('{' + 'combined_submission_id' + '}', combined_submission_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CombinedSubmission')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#get_combined_submission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the status of a PDF
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @return [Submission]
    def get_submission(submission_id, opts = {})
      data, _status_code, _headers = get_submission_with_http_info(submission_id, opts)
      data
    end

    # Check the status of a PDF
    # @param submission_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Submission, Fixnum, Hash)>] Submission data, response status code and response headers
    def get_submission_with_http_info(submission_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PDFApi.get_submission ...'
      end
      # verify the required parameter 'submission_id' is set
      if @api_client.config.client_side_validation && submission_id.nil?
        fail ArgumentError, "Missing the required parameter 'submission_id' when calling PDFApi.get_submission"
      end
      # resource path
      local_var_path = '/submissions/{submission_id}'.sub('{' + 'submission_id' + '}', submission_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Submission')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#get_submission\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Check the status of a submission batch job
    # @param submission_batch_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_submissions 
    # @return [SubmissionBatch]
    def get_submission_batch(submission_batch_id, opts = {})
      data, _status_code, _headers = get_submission_batch_with_http_info(submission_batch_id, opts)
      data
    end

    # Check the status of a submission batch job
    # @param submission_batch_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :include_submissions 
    # @return [Array<(SubmissionBatch, Fixnum, Hash)>] SubmissionBatch data, response status code and response headers
    def get_submission_batch_with_http_info(submission_batch_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PDFApi.get_submission_batch ...'
      end
      # verify the required parameter 'submission_batch_id' is set
      if @api_client.config.client_side_validation && submission_batch_id.nil?
        fail ArgumentError, "Missing the required parameter 'submission_batch_id' when calling PDFApi.get_submission_batch"
      end
      # resource path
      local_var_path = '/submissions/batches/{submission_batch_id}'.sub('{' + 'submission_batch_id' + '}', submission_batch_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include_submissions'] = opts[:'include_submissions'] if !opts[:'include_submissions'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SubmissionBatch')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#get_submission_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all templates
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Default: 1
    # @option opts [Integer] :per_page Default: 50
    # @return [Array<Template>]
    def get_templates(opts = {})
      data, _status_code, _headers = get_templates_with_http_info(opts)
      data
    end

    # Get a list of all templates
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Default: 1
    # @option opts [Integer] :per_page Default: 50
    # @return [Array<(Array<Template>, Fixnum, Hash)>] Array<Template> data, response status code and response headers
    def get_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PDFApi.get_templates ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page'].nil? && opts[:'page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"page"]" when calling PDFApi.get_templates, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] > 50
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling PDFApi.get_templates, must be smaller than or equal to 50.'
      end

      if @api_client.config.client_side_validation && !opts[:'per_page'].nil? && opts[:'per_page'] < 1
        fail ArgumentError, 'invalid value for "opts[:"per_page"]" when calling PDFApi.get_templates, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/templates'

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'per_page'] = opts[:'per_page'] if !opts[:'per_page'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Template>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#get_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test Authentication
    # @param [Hash] opts the optional parameters
    # @return [AuthenticationSuccessResponse]
    def test_authentication(opts = {})
      data, _status_code, _headers = test_authentication_with_http_info(opts)
      data
    end

    # Test Authentication
    # @param [Hash] opts the optional parameters
    # @return [Array<(AuthenticationSuccessResponse, Fixnum, Hash)>] AuthenticationSuccessResponse data, response status code and response headers
    def test_authentication_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PDFApi.test_authentication ...'
      end
      # resource path
      local_var_path = '/authentication'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_token_basic']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AuthenticationSuccessResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PDFApi#test_authentication\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
