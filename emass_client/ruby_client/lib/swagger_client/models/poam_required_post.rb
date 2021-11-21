=begin
#Enterprise Mission Assurance Support Service (eMASS)

#The Enterprise Mission Assurance Support Service (eMASS) REST Application Programming Interface (API) enables users to perform assessments and complete actions associated with system records. This document will provide an outline of all eMASS objects and their associated endpoints to include Department of Defense (DoD) business rules that pertain to each.  New users will need to register an API key with the eMASS development team prior to accessing the site for the first time. The eMASS REST API requires a client certificate (SSL/TLS, DoD PKI only) where {url}/api/register (POST) is used to register the client certificate.  Every call to the eMASS REST API will require the use of the agreed upon public key certificate and API key. The API key must be provided in the request header for all endpoint calls (api-key). If the service receives an untrusted certificate or API key, a 401 error response code will be returned along with an error message.  <strong>Available Request Headers:</strong>  | Key      | Example Value            | Description |----------|--------------------------|------------------------------------ |`api-key` |api-key-provided-by-emass |This API key must be provided in the request header for all endpoint calls |`user-uid`|USER.UID.KEY              |This User unique identifier key must be provided in the request header for all PUT, POST, and DELETE endpoint calls. |          |                          |Note: For DoD users this is the DoD ID Number (EIDIPI) on their DoD CAC.  Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions.  <strong>Approve API Client for Actionable Requests</strong><br> Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions. Please note that leaving a field parameter blank (for PUT/POST requests) has the potential to clear information in the active eMASS records.  To establish an account with eMASS and/or acquire an api-key/user-uid, contact one of the listed POC: 

OpenAPI spec version: 2.3.0
Contact: disa.meade.id.mbx.emass-tier-iii-support@mail.mil
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.26
=end

require 'date'

module SwaggerClient
  class PoamRequiredPost
    # [Required] Values include the following: (Ongoing,Risk Accepted,Completed,Not Applicable
    attr_accessor :status

    # [Required] Provide a description of the POA&M Item. 2000 Characters.
    attr_accessor :vulnerability_description

    # [Required] Include Source Identifying Vulnerability text. 2000 Characters.
    attr_accessor :source_ident_vuln

    # OPTIONAL/REQUIRED Values include the following options: (Not Approved,Under Review,Approved)
    attr_accessor :review_status

    # [Required] Organization/Office represented. 100 Characters.
    attr_accessor :poc_organization

    # [Required] First name of POC. 100 Characters.
    attr_accessor :poc_first_name

    # [Required] Last name of POC. 100 Characters.
    attr_accessor :poc_last_name

    # [Required] Email address of POC. 100 Characters.
    attr_accessor :poc_email

    # [Required] Phone number of POC (area code) ***-**** format. 100 Characters.
    attr_accessor :poc_phone_number

    # [Optional] Unique identifier external to the eMASS application for use with associating POA&Ms. 100 Characters.
    attr_accessor :external_uid

    # [Optional] Control acronym associated with the POA&M Item. NIST SP 800-53 Revision 4 defined.
    attr_accessor :control_acronyms

    # CCI associated with POA&M.
    attr_accessor :cci

    # [Optional] Security Checks that are associated with the POA&M.
    attr_accessor :security_checks

    # [Optional] Values include the following options (I,II,III)
    attr_accessor :raw_severity

    # [Optional] List of resources used. 250 Characters.
    attr_accessor :resources

    # [Optional] Values include the following options (Very Low, Low, Moderate,High,Very High)
    attr_accessor :relevance_of_threat

    # [Optional] Values include the following options (Very Low, Low, Moderate,High,Very High)
    attr_accessor :likelihood

    # [Optional] Values include the following options (Very Low, Low, Moderate,High,Very High)
    attr_accessor :impact

    # [Optional] Include description of Security Control’s impact.
    attr_accessor :impact_description

    # [Optional] Values include the following options (Very Low, Low, Moderate,High,Very High)
    attr_accessor :residual_risk_level

    # [Optional] Include recommendations. Character Limit = 2,000.
    attr_accessor :recommendations

    # [Optional] Include mitigation explanation. 2000 Characters.
    attr_accessor :mitigation

    # [Conditional] Required for approved items. Values include the following options: (Very Low, Low, Moderate,High,Very High)
    attr_accessor :severity

    # [Conditional] Required for ongoing and completed POA&M items. Unix time format.
    attr_accessor :scheduled_completion_date

    # [Conditional] Field is required for completed and risk accepted POA&M items. 2000 Characters
    attr_accessor :comments

    # [Conditional] Field is required for completed POA&M items. Unix time format.
    attr_accessor :completion_date

    attr_accessor :milestones

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'status' => :'status',
        :'vulnerability_description' => :'vulnerabilityDescription',
        :'source_ident_vuln' => :'sourceIdentVuln',
        :'review_status' => :'reviewStatus',
        :'poc_organization' => :'pocOrganization',
        :'poc_first_name' => :'pocFirstName',
        :'poc_last_name' => :'pocLastName',
        :'poc_email' => :'pocEmail',
        :'poc_phone_number' => :'pocPhoneNumber',
        :'external_uid' => :'externalUid',
        :'control_acronyms' => :'controlAcronyms',
        :'cci' => :'cci',
        :'security_checks' => :'securityChecks',
        :'raw_severity' => :'rawSeverity',
        :'resources' => :'resources',
        :'relevance_of_threat' => :'relevanceOfThreat',
        :'likelihood' => :'likelihood',
        :'impact' => :'impact',
        :'impact_description' => :'impactDescription',
        :'residual_risk_level' => :'residualRiskLevel',
        :'recommendations' => :'recommendations',
        :'mitigation' => :'mitigation',
        :'severity' => :'severity',
        :'scheduled_completion_date' => :'scheduledCompletionDate',
        :'comments' => :'comments',
        :'completion_date' => :'completionDate',
        :'milestones' => :'milestones'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'status' => :'Object',
        :'vulnerability_description' => :'Object',
        :'source_ident_vuln' => :'Object',
        :'review_status' => :'Object',
        :'poc_organization' => :'Object',
        :'poc_first_name' => :'Object',
        :'poc_last_name' => :'Object',
        :'poc_email' => :'Object',
        :'poc_phone_number' => :'Object',
        :'external_uid' => :'Object',
        :'control_acronyms' => :'Object',
        :'cci' => :'Object',
        :'security_checks' => :'Object',
        :'raw_severity' => :'Object',
        :'resources' => :'Object',
        :'relevance_of_threat' => :'Object',
        :'likelihood' => :'Object',
        :'impact' => :'Object',
        :'impact_description' => :'Object',
        :'residual_risk_level' => :'Object',
        :'recommendations' => :'Object',
        :'mitigation' => :'Object',
        :'severity' => :'Object',
        :'scheduled_completion_date' => :'Object',
        :'comments' => :'Object',
        :'completion_date' => :'Object',
        :'milestones' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::PoamRequiredPost` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::PoamRequiredPost`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'vulnerability_description')
        self.vulnerability_description = attributes[:'vulnerability_description']
      end

      if attributes.key?(:'source_ident_vuln')
        self.source_ident_vuln = attributes[:'source_ident_vuln']
      end

      if attributes.key?(:'review_status')
        self.review_status = attributes[:'review_status']
      end

      if attributes.key?(:'poc_organization')
        self.poc_organization = attributes[:'poc_organization']
      end

      if attributes.key?(:'poc_first_name')
        self.poc_first_name = attributes[:'poc_first_name']
      end

      if attributes.key?(:'poc_last_name')
        self.poc_last_name = attributes[:'poc_last_name']
      end

      if attributes.key?(:'poc_email')
        self.poc_email = attributes[:'poc_email']
      end

      if attributes.key?(:'poc_phone_number')
        self.poc_phone_number = attributes[:'poc_phone_number']
      end

      if attributes.key?(:'external_uid')
        self.external_uid = attributes[:'external_uid']
      end

      if attributes.key?(:'control_acronyms')
        self.control_acronyms = attributes[:'control_acronyms']
      end

      if attributes.key?(:'cci')
        self.cci = attributes[:'cci']
      end

      if attributes.key?(:'security_checks')
        self.security_checks = attributes[:'security_checks']
      end

      if attributes.key?(:'raw_severity')
        self.raw_severity = attributes[:'raw_severity']
      end

      if attributes.key?(:'resources')
        self.resources = attributes[:'resources']
      end

      if attributes.key?(:'relevance_of_threat')
        self.relevance_of_threat = attributes[:'relevance_of_threat']
      end

      if attributes.key?(:'likelihood')
        self.likelihood = attributes[:'likelihood']
      end

      if attributes.key?(:'impact')
        self.impact = attributes[:'impact']
      end

      if attributes.key?(:'impact_description')
        self.impact_description = attributes[:'impact_description']
      end

      if attributes.key?(:'residual_risk_level')
        self.residual_risk_level = attributes[:'residual_risk_level']
      end

      if attributes.key?(:'recommendations')
        self.recommendations = attributes[:'recommendations']
      end

      if attributes.key?(:'mitigation')
        self.mitigation = attributes[:'mitigation']
      end

      if attributes.key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.key?(:'scheduled_completion_date')
        self.scheduled_completion_date = attributes[:'scheduled_completion_date']
      end

      if attributes.key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.key?(:'completion_date')
        self.completion_date = attributes[:'completion_date']
      end

      if attributes.key?(:'milestones')
        if (value = attributes[:'milestones']).is_a?(Array)
          self.milestones = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      status_validator = EnumAttributeValidator.new('Object', ['Ongoing', 'Risk Accepted', 'Completed', 'Not Applicable'])
      return false unless status_validator.valid?(@status)
      review_status_validator = EnumAttributeValidator.new('Object', ['Not Approved', 'Under Review', 'Approved'])
      return false unless review_status_validator.valid?(@review_status)
      raw_severity_validator = EnumAttributeValidator.new('Object', ['I', 'II', 'III'])
      return false unless raw_severity_validator.valid?(@raw_severity)
      relevance_of_threat_validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      return false unless relevance_of_threat_validator.valid?(@relevance_of_threat)
      likelihood_validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      return false unless likelihood_validator.valid?(@likelihood)
      impact_validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      return false unless impact_validator.valid?(@impact)
      residual_risk_level_validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      return false unless residual_risk_level_validator.valid?(@residual_risk_level)
      severity_validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      return false unless severity_validator.valid?(@severity)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('Object', ['Ongoing', 'Risk Accepted', 'Completed', 'Not Applicable'])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] review_status Object to be assigned
    def review_status=(review_status)
      validator = EnumAttributeValidator.new('Object', ['Not Approved', 'Under Review', 'Approved'])
      unless validator.valid?(review_status)
        fail ArgumentError, "invalid value for \"review_status\", must be one of #{validator.allowable_values}."
      end
      @review_status = review_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] raw_severity Object to be assigned
    def raw_severity=(raw_severity)
      validator = EnumAttributeValidator.new('Object', ['I', 'II', 'III'])
      unless validator.valid?(raw_severity)
        fail ArgumentError, "invalid value for \"raw_severity\", must be one of #{validator.allowable_values}."
      end
      @raw_severity = raw_severity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] relevance_of_threat Object to be assigned
    def relevance_of_threat=(relevance_of_threat)
      validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      unless validator.valid?(relevance_of_threat)
        fail ArgumentError, "invalid value for \"relevance_of_threat\", must be one of #{validator.allowable_values}."
      end
      @relevance_of_threat = relevance_of_threat
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] likelihood Object to be assigned
    def likelihood=(likelihood)
      validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      unless validator.valid?(likelihood)
        fail ArgumentError, "invalid value for \"likelihood\", must be one of #{validator.allowable_values}."
      end
      @likelihood = likelihood
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] impact Object to be assigned
    def impact=(impact)
      validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      unless validator.valid?(impact)
        fail ArgumentError, "invalid value for \"impact\", must be one of #{validator.allowable_values}."
      end
      @impact = impact
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] residual_risk_level Object to be assigned
    def residual_risk_level=(residual_risk_level)
      validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      unless validator.valid?(residual_risk_level)
        fail ArgumentError, "invalid value for \"residual_risk_level\", must be one of #{validator.allowable_values}."
      end
      @residual_risk_level = residual_risk_level
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] severity Object to be assigned
    def severity=(severity)
      validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      unless validator.valid?(severity)
        fail ArgumentError, "invalid value for \"severity\", must be one of #{validator.allowable_values}."
      end
      @severity = severity
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          vulnerability_description == o.vulnerability_description &&
          source_ident_vuln == o.source_ident_vuln &&
          review_status == o.review_status &&
          poc_organization == o.poc_organization &&
          poc_first_name == o.poc_first_name &&
          poc_last_name == o.poc_last_name &&
          poc_email == o.poc_email &&
          poc_phone_number == o.poc_phone_number &&
          external_uid == o.external_uid &&
          control_acronyms == o.control_acronyms &&
          cci == o.cci &&
          security_checks == o.security_checks &&
          raw_severity == o.raw_severity &&
          resources == o.resources &&
          relevance_of_threat == o.relevance_of_threat &&
          likelihood == o.likelihood &&
          impact == o.impact &&
          impact_description == o.impact_description &&
          residual_risk_level == o.residual_risk_level &&
          recommendations == o.recommendations &&
          mitigation == o.mitigation &&
          severity == o.severity &&
          scheduled_completion_date == o.scheduled_completion_date &&
          comments == o.comments &&
          completion_date == o.completion_date &&
          milestones == o.milestones
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [status, vulnerability_description, source_ident_vuln, review_status, poc_organization, poc_first_name, poc_last_name, poc_email, poc_phone_number, external_uid, control_acronyms, cci, security_checks, raw_severity, resources, relevance_of_threat, likelihood, impact, impact_description, residual_risk_level, recommendations, mitigation, severity, scheduled_completion_date, comments, completion_date, milestones].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        SwaggerClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
