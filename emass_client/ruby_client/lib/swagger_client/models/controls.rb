=begin
#Enterprise Mission Assurance Support Service (eMASS)

#The Enterprise Mission Assurance Support Service (eMASS) REST Application Programming Interface (API) enables users to perform assessments and complete actions associated with system records. This document will provide an outline of all eMASS objects and their associated endpoints to include Department of Defense (DoD) business rules that pertain to each.  New users will need to register an API key with the eMASS development team prior to accessing the site for the first time. The eMASS REST API requires a client certificate (SSL/TLS, DoD PKI only) where {url}/api/register (POST) is used to register the client certificate.  Every call to the eMASS REST API will require the use of the agreed upon public key certificate and API key. The API key must be provided in the request header for all endpoint calls (api-key). If the service receives an untrusted certificate or API key, a 401 error response code will be returned along with an error message.  <strong>Available Request Headers:</strong> | Key      | Example Value                | Description |----------|------------------------------|------------------------------------ |`api-key` |avalid-apikey-isrequired-here |This API key must be provided in the request header for all endpoint calls |`user-uid`|USER.UID.KEY                  |This User unique identifier key must be provided in the request header for all PUT, POST, and DELETE endpoint calls.  |          |                              |Note: For DoD users this is the DoD ID Number (EIDIPI) on their DoD CAC.  Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions.  <strong>Approve API Client for Actionable Requests</strong><br> Users are required to log-in to eMASS and grant permissions for a client to update data within eMASS on their behalf. This is only required for actionable requests (PUT, POST, DELETE). The Registration Endpoint and all GET requests can be accessed without completing this process with the correct permissions. Please note that leaving a field parameter blank (for PUT/POST requests) has the potential to clear information in the active eMASS records.  To establish an account with eMASS and/or acquire an api-key/user-uid, contact one of the listed POC:

OpenAPI spec version: 2.3.0
Contact: disa.meade.id.mbx.emass-tier-iii-support@mail.mil
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.26
=end

require 'date'

module SwaggerClient
  class Controls
    # [Required] Unique system record identifier.
    attr_accessor :system_id

    # [Read-only] Name of the system record.
    attr_accessor :name

    # [Required] Acronym of the system record.
    attr_accessor :acronym

    # [Read-only] Comma separated list of CCIs associated with the control.
    attr_accessor :ccis

    # [Read-only] Indicates whether a control is inherited.
    attr_accessor :is_inherited

    # [Read-only] List of overlays that affect the control.
    attr_accessor :modified_by_overlays

    # [Read-only] Indicates the manner by which a control was included in the system’s categorization.
    attr_accessor :included_status

    # [Read-only] Compliance of the control.
    attr_accessor :compliance_status

    # [Required] Include written description of Responsible Entities that are responsible for the Security Control. Character Limit = 2,000.
    attr_accessor :responsible_entities

    # [Optional] Implementation Status of the Security Control for the information system.<br> Values include the following options: <ul>   <li>Planned</li>   <li>Implemented</li>   <li>Inherited</li>   <li>Not Applicable</li>   <li>Manually Inherited</li> </ul>
    attr_accessor :implementation_status

    # [Conditional] Indicate the type of Common Control Provider for an “Inherited” Security Control.<br> Values include the following options: <ul>   <li>DoD</li>   <li>Component</li>   <li>Enclave</li> </ul>
    attr_accessor :common_control_provider

    # [Conditional] Provide justification for Security Controls deemed Not Applicable to the system.
    attr_accessor :na_justification

    # Values include the following options:<br> <ul>   <li>Common</li>   <li>System-Specific</li>   <li>Hybrid</li> </ul>        
    attr_accessor :control_designation

    # [Required] Field is required for Implementation Plan.
    attr_accessor :estimated_completion_date

    # [Required] Includes security control comments. Character Limit = 2,000.
    attr_accessor :comments

    # [Conditional] Criticality of Security Control regarding SLCM. Character Limit = 2,000.
    attr_accessor :slcm_criticality

    # [Conditional] Values include the following options:<br> <ul>   <li>Constantly</li>   <li>Daily</li>   <li>Weekly</li>   <li>Monthly</li>   <li>Quarterly</li>   <li>Semi-Annually</li>   <li>Annually</li>   <li>Undetermined</li> </ul>        
    attr_accessor :slcm_frequency

    # [Conditional] Values include the following options:<br> <ul>   <li>Automated</li>   <li>Semi-Automated</li>   <li>Manual</li>   <li>Undetermined</li> </ul>        
    attr_accessor :slcm_method

    # [Conditional] Method for reporting Security Control for SLCM. Character Limit = 2,000.
    attr_accessor :slcm_reporting

    # [Conditional] How Non-Compliant Security Controls will be tracked for SLCM. Character Limit = 2,000.
    attr_accessor :slcm_tracking

    # [Conditional] Additional comments for Security Control regarding SLCM. Character Limit = 4,000.
    attr_accessor :slcm_comments

    # [Optional] Values include the following options (Very Low, Low, Moderate,High,Very High)
    attr_accessor :severity

    # [Optional] Include vulnerability summary. Character Limit = 2,000.
    attr_accessor :vulnerabilty_summary

    # [Optional] Include recommendations. Character Limit = 2,000.
    attr_accessor :recommendations

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
        :'system_id' => :'systemId',
        :'name' => :'name',
        :'acronym' => :'acronym',
        :'ccis' => :'ccis',
        :'is_inherited' => :'isInherited',
        :'modified_by_overlays' => :'modifiedByOverlays',
        :'included_status' => :'includedStatus',
        :'compliance_status' => :'complianceStatus',
        :'responsible_entities' => :'responsibleEntities',
        :'implementation_status' => :'implementationStatus',
        :'common_control_provider' => :'commonControlProvider',
        :'na_justification' => :'naJustification',
        :'control_designation' => :'controlDesignation',
        :'estimated_completion_date' => :'estimatedCompletionDate',
        :'comments' => :'comments',
        :'slcm_criticality' => :'slcmCriticality',
        :'slcm_frequency' => :'slcmFrequency',
        :'slcm_method' => :'slcmMethod',
        :'slcm_reporting' => :'slcmReporting',
        :'slcm_tracking' => :'slcmTracking',
        :'slcm_comments' => :'slcmComments',
        :'severity' => :'severity',
        :'vulnerabilty_summary' => :'vulnerabiltySummary',
        :'recommendations' => :'recommendations',
        :'relevance_of_threat' => :'relevanceOfThreat',
        :'likelihood' => :'likelihood',
        :'impact' => :'impact',
        :'impact_description' => :'impactDescription',
        :'residual_risk_level' => :'residualRiskLevel'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'system_id' => :'Object',
        :'name' => :'Object',
        :'acronym' => :'Object',
        :'ccis' => :'Object',
        :'is_inherited' => :'Object',
        :'modified_by_overlays' => :'Object',
        :'included_status' => :'Object',
        :'compliance_status' => :'Object',
        :'responsible_entities' => :'Object',
        :'implementation_status' => :'Object',
        :'common_control_provider' => :'Object',
        :'na_justification' => :'Object',
        :'control_designation' => :'Object',
        :'estimated_completion_date' => :'Object',
        :'comments' => :'Object',
        :'slcm_criticality' => :'Object',
        :'slcm_frequency' => :'Object',
        :'slcm_method' => :'Object',
        :'slcm_reporting' => :'Object',
        :'slcm_tracking' => :'Object',
        :'slcm_comments' => :'Object',
        :'severity' => :'Object',
        :'vulnerabilty_summary' => :'Object',
        :'recommendations' => :'Object',
        :'relevance_of_threat' => :'Object',
        :'likelihood' => :'Object',
        :'impact' => :'Object',
        :'impact_description' => :'Object',
        :'residual_risk_level' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::Controls` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::Controls`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'system_id')
        self.system_id = attributes[:'system_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'acronym')
        self.acronym = attributes[:'acronym']
      end

      if attributes.key?(:'ccis')
        self.ccis = attributes[:'ccis']
      end

      if attributes.key?(:'is_inherited')
        self.is_inherited = attributes[:'is_inherited']
      end

      if attributes.key?(:'modified_by_overlays')
        self.modified_by_overlays = attributes[:'modified_by_overlays']
      end

      if attributes.key?(:'included_status')
        self.included_status = attributes[:'included_status']
      end

      if attributes.key?(:'compliance_status')
        self.compliance_status = attributes[:'compliance_status']
      end

      if attributes.key?(:'responsible_entities')
        self.responsible_entities = attributes[:'responsible_entities']
      end

      if attributes.key?(:'implementation_status')
        self.implementation_status = attributes[:'implementation_status']
      end

      if attributes.key?(:'common_control_provider')
        self.common_control_provider = attributes[:'common_control_provider']
      end

      if attributes.key?(:'na_justification')
        self.na_justification = attributes[:'na_justification']
      end

      if attributes.key?(:'control_designation')
        self.control_designation = attributes[:'control_designation']
      end

      if attributes.key?(:'estimated_completion_date')
        self.estimated_completion_date = attributes[:'estimated_completion_date']
      end

      if attributes.key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.key?(:'slcm_criticality')
        self.slcm_criticality = attributes[:'slcm_criticality']
      end

      if attributes.key?(:'slcm_frequency')
        self.slcm_frequency = attributes[:'slcm_frequency']
      end

      if attributes.key?(:'slcm_method')
        self.slcm_method = attributes[:'slcm_method']
      end

      if attributes.key?(:'slcm_reporting')
        self.slcm_reporting = attributes[:'slcm_reporting']
      end

      if attributes.key?(:'slcm_tracking')
        self.slcm_tracking = attributes[:'slcm_tracking']
      end

      if attributes.key?(:'slcm_comments')
        self.slcm_comments = attributes[:'slcm_comments']
      end

      if attributes.key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.key?(:'vulnerabilty_summary')
        self.vulnerabilty_summary = attributes[:'vulnerabilty_summary']
      end

      if attributes.key?(:'recommendations')
        self.recommendations = attributes[:'recommendations']
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
      modified_by_overlays_validator = EnumAttributeValidator.new('Object', ['Privacy', 'Requirements', 'Concurrency'])
      return false unless modified_by_overlays_validator.valid?(@modified_by_overlays)
      included_status_validator = EnumAttributeValidator.new('Object', ['Mandated', 'Manually', 'Inherent'])
      return false unless included_status_validator.valid?(@included_status)
      responsible_entities_validator = EnumAttributeValidator.new('Object', ['Compliant', 'Non-Compliant', 'Unknown'])
      return false unless responsible_entities_validator.valid?(@responsible_entities)
      implementation_status_validator = EnumAttributeValidator.new('Object', ['Planned', 'Implemented', 'Inherited', 'Not Applicable', 'Manually Inherited'])
      return false unless implementation_status_validator.valid?(@implementation_status)
      common_control_provider_validator = EnumAttributeValidator.new('Object', ['DoD', 'Component', 'Enclave'])
      return false unless common_control_provider_validator.valid?(@common_control_provider)
      na_justification_validator = EnumAttributeValidator.new('Object', ['System EOL within 30 days', 'System EOL within 60 days', 'System EOL within 120 days', 'Unknown'])
      return false unless na_justification_validator.valid?(@na_justification)
      control_designation_validator = EnumAttributeValidator.new('Object', ['Common', 'System-Specific', 'Hybrid'])
      return false unless control_designation_validator.valid?(@control_designation)
      slcm_frequency_validator = EnumAttributeValidator.new('Object', ['Constantly', 'Daily', 'Weekly', 'Monthly', 'Quarterly', 'Semi-Annually', 'Annually', 'Undetermined'])
      return false unless slcm_frequency_validator.valid?(@slcm_frequency)
      slcm_method_validator = EnumAttributeValidator.new('Object', ['Automated', 'Semi-Automated', 'Manual', 'Undetermined'])
      return false unless slcm_method_validator.valid?(@slcm_method)
      severity_validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      return false unless severity_validator.valid?(@severity)
      relevance_of_threat_validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      return false unless relevance_of_threat_validator.valid?(@relevance_of_threat)
      likelihood_validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      return false unless likelihood_validator.valid?(@likelihood)
      impact_validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      return false unless impact_validator.valid?(@impact)
      residual_risk_level_validator = EnumAttributeValidator.new('Object', ['Very Low', 'Low', 'Moderate', 'High', 'Very High'])
      return false unless residual_risk_level_validator.valid?(@residual_risk_level)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] modified_by_overlays Object to be assigned
    def modified_by_overlays=(modified_by_overlays)
      validator = EnumAttributeValidator.new('Object', ['Privacy', 'Requirements', 'Concurrency'])
      unless validator.valid?(modified_by_overlays)
        fail ArgumentError, "invalid value for \"modified_by_overlays\", must be one of #{validator.allowable_values}."
      end
      @modified_by_overlays = modified_by_overlays
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] included_status Object to be assigned
    def included_status=(included_status)
      validator = EnumAttributeValidator.new('Object', ['Mandated', 'Manually', 'Inherent'])
      unless validator.valid?(included_status)
        fail ArgumentError, "invalid value for \"included_status\", must be one of #{validator.allowable_values}."
      end
      @included_status = included_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] responsible_entities Object to be assigned
    def responsible_entities=(responsible_entities)
      validator = EnumAttributeValidator.new('Object', ['Compliant', 'Non-Compliant', 'Unknown'])
      unless validator.valid?(responsible_entities)
        fail ArgumentError, "invalid value for \"responsible_entities\", must be one of #{validator.allowable_values}."
      end
      @responsible_entities = responsible_entities
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] implementation_status Object to be assigned
    def implementation_status=(implementation_status)
      validator = EnumAttributeValidator.new('Object', ['Planned', 'Implemented', 'Inherited', 'Not Applicable', 'Manually Inherited'])
      unless validator.valid?(implementation_status)
        fail ArgumentError, "invalid value for \"implementation_status\", must be one of #{validator.allowable_values}."
      end
      @implementation_status = implementation_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] common_control_provider Object to be assigned
    def common_control_provider=(common_control_provider)
      validator = EnumAttributeValidator.new('Object', ['DoD', 'Component', 'Enclave'])
      unless validator.valid?(common_control_provider)
        fail ArgumentError, "invalid value for \"common_control_provider\", must be one of #{validator.allowable_values}."
      end
      @common_control_provider = common_control_provider
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] na_justification Object to be assigned
    def na_justification=(na_justification)
      validator = EnumAttributeValidator.new('Object', ['System EOL within 30 days', 'System EOL within 60 days', 'System EOL within 120 days', 'Unknown'])
      unless validator.valid?(na_justification)
        fail ArgumentError, "invalid value for \"na_justification\", must be one of #{validator.allowable_values}."
      end
      @na_justification = na_justification
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] control_designation Object to be assigned
    def control_designation=(control_designation)
      validator = EnumAttributeValidator.new('Object', ['Common', 'System-Specific', 'Hybrid'])
      unless validator.valid?(control_designation)
        fail ArgumentError, "invalid value for \"control_designation\", must be one of #{validator.allowable_values}."
      end
      @control_designation = control_designation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] slcm_frequency Object to be assigned
    def slcm_frequency=(slcm_frequency)
      validator = EnumAttributeValidator.new('Object', ['Constantly', 'Daily', 'Weekly', 'Monthly', 'Quarterly', 'Semi-Annually', 'Annually', 'Undetermined'])
      unless validator.valid?(slcm_frequency)
        fail ArgumentError, "invalid value for \"slcm_frequency\", must be one of #{validator.allowable_values}."
      end
      @slcm_frequency = slcm_frequency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] slcm_method Object to be assigned
    def slcm_method=(slcm_method)
      validator = EnumAttributeValidator.new('Object', ['Automated', 'Semi-Automated', 'Manual', 'Undetermined'])
      unless validator.valid?(slcm_method)
        fail ArgumentError, "invalid value for \"slcm_method\", must be one of #{validator.allowable_values}."
      end
      @slcm_method = slcm_method
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          system_id == o.system_id &&
          name == o.name &&
          acronym == o.acronym &&
          ccis == o.ccis &&
          is_inherited == o.is_inherited &&
          modified_by_overlays == o.modified_by_overlays &&
          included_status == o.included_status &&
          compliance_status == o.compliance_status &&
          responsible_entities == o.responsible_entities &&
          implementation_status == o.implementation_status &&
          common_control_provider == o.common_control_provider &&
          na_justification == o.na_justification &&
          control_designation == o.control_designation &&
          estimated_completion_date == o.estimated_completion_date &&
          comments == o.comments &&
          slcm_criticality == o.slcm_criticality &&
          slcm_frequency == o.slcm_frequency &&
          slcm_method == o.slcm_method &&
          slcm_reporting == o.slcm_reporting &&
          slcm_tracking == o.slcm_tracking &&
          slcm_comments == o.slcm_comments &&
          severity == o.severity &&
          vulnerabilty_summary == o.vulnerabilty_summary &&
          recommendations == o.recommendations &&
          relevance_of_threat == o.relevance_of_threat &&
          likelihood == o.likelihood &&
          impact == o.impact &&
          impact_description == o.impact_description &&
          residual_risk_level == o.residual_risk_level
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [system_id, name, acronym, ccis, is_inherited, modified_by_overlays, included_status, compliance_status, responsible_entities, implementation_status, common_control_provider, na_justification, control_designation, estimated_completion_date, comments, slcm_criticality, slcm_frequency, slcm_method, slcm_reporting, slcm_tracking, slcm_comments, severity, vulnerabilty_summary, recommendations, relevance_of_threat, likelihood, impact, impact_description, residual_risk_level].hash
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
