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
  class TestResultsGet
    # [Required] Unique eMASS identifier. Will need to provide correct number
    attr_accessor :system_id

    # [Read-Only] Control acronym associated with the test result. NIST SP 800-53 Revision 4 defined.
    attr_accessor :control

    # [Required] CCI associated with test result.
    attr_accessor :cci

    # [Read-only] Indicates whether a test result is inherited.
    attr_accessor :is_inherited

    # [Required] Last Name, First Name. 100 Characters.
    attr_accessor :tested_by

    # [Required] Unix time format.
    attr_accessor :test_date

    # [Required] Include description of test result. 4000 Characters.
    attr_accessor :description

    # [Read-Only] Indicates the location in the Control Approval Chain when the test result is submitted.
    attr_accessor :type

    # [Required] Values include the following options:<br> <ul>   <li>Compliant</li>   <li>Non-Compliant</li>   <li>Not Applicable</li> </ul>
    attr_accessor :compliance_status

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
        :'control' => :'control',
        :'cci' => :'cci',
        :'is_inherited' => :'isInherited',
        :'tested_by' => :'testedBy',
        :'test_date' => :'testDate',
        :'description' => :'description',
        :'type' => :'type',
        :'compliance_status' => :'complianceStatus'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'system_id' => :'Object',
        :'control' => :'Object',
        :'cci' => :'Object',
        :'is_inherited' => :'Object',
        :'tested_by' => :'Object',
        :'test_date' => :'Object',
        :'description' => :'Object',
        :'type' => :'Object',
        :'compliance_status' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SwaggerClient::TestResultsGet` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SwaggerClient::TestResultsGet`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'system_id')
        self.system_id = attributes[:'system_id']
      end

      if attributes.key?(:'control')
        self.control = attributes[:'control']
      end

      if attributes.key?(:'cci')
        self.cci = attributes[:'cci']
      end

      if attributes.key?(:'is_inherited')
        self.is_inherited = attributes[:'is_inherited']
      end

      if attributes.key?(:'tested_by')
        self.tested_by = attributes[:'tested_by']
      end

      if attributes.key?(:'test_date')
        self.test_date = attributes[:'test_date']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'compliance_status')
        self.compliance_status = attributes[:'compliance_status']
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
      type_validator = EnumAttributeValidator.new('Object', ['Self-Assessment', 'Schedule-Assessment'])
      return false unless type_validator.valid?(@type)
      compliance_status_validator = EnumAttributeValidator.new('Object', ['Compliant', 'Non-Compliant', 'Not Applicable'])
      return false unless compliance_status_validator.valid?(@compliance_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('Object', ['Self-Assessment', 'Schedule-Assessment'])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] compliance_status Object to be assigned
    def compliance_status=(compliance_status)
      validator = EnumAttributeValidator.new('Object', ['Compliant', 'Non-Compliant', 'Not Applicable'])
      unless validator.valid?(compliance_status)
        fail ArgumentError, "invalid value for \"compliance_status\", must be one of #{validator.allowable_values}."
      end
      @compliance_status = compliance_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          system_id == o.system_id &&
          control == o.control &&
          cci == o.cci &&
          is_inherited == o.is_inherited &&
          tested_by == o.tested_by &&
          test_date == o.test_date &&
          description == o.description &&
          type == o.type &&
          compliance_status == o.compliance_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [system_id, control, cci, is_inherited, tested_by, test_date, description, type, compliance_status].hash
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
