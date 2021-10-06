##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

module Twilio
  module REST
    class Verify < Domain
      class V2 < Version
        class ServiceContext < InstanceContext
          class VerificationList < ListResource
            ##
            # Initialize the VerificationList
            # @param [Version] version Version that contains the resource
            # @param [String] service_sid The SID of the
            #   {Service}[https://www.twilio.com/docs/verify/api/service] the resource is
            #   associated with.
            # @return [VerificationList] VerificationList
            def initialize(version, service_sid: nil)
              super(version)

              # Path Solution
              @solution = {service_sid: service_sid}
              @uri = "/Services/#{@solution[:service_sid]}/Verifications"
            end

            ##
            # Create the VerificationInstance
            # @param [String] to The phone number or
            #   {email}[https://www.twilio.com/docs/verify/email] to verify. Phone numbers must
            #   be in {E.164 format}[https://www.twilio.com/docs/glossary/what-e164].
            # @param [String] channel The verification method to use. Can be:
            #   {`email`}[https://www.twilio.com/docs/verify/email], `sms`, `whatsapp` or
            #   `call`.
            # @param [String] custom_friendly_name A custom user defined friendly name that
            #   overwrites the existing one in the verification message
            # @param [String] custom_message The text of a custom message to use for the
            #   verification.
            # @param [String] send_digits The digits to send after a phone call is answered,
            #   for example, to dial an extension. For more information, see the Programmable
            #   Voice documentation of
            #   {sendDigits}[https://www.twilio.com/docs/voice/twiml/number#attributes-sendDigits].
            # @param [String] locale The locale to use for the verification SMS, WhatsApp or
            #   call. Can be: `af`, `ar`, `ca`, `cs`, `da`, `de`, `el`, `en`, `en-GB`, `es`,
            #   `fi`, `fr`, `he`, `hi`, `hr`, `hu`, `id`, `it`, `ja`, `ko`, `ms`, `nb`, `nl`,
            #   `pl`, `pt`, `pr-BR`, `ro`, `ru`, `sv`, `th`, `tl`, `tr`, `vi`, `zh`, `zh-CN`, or
            #   `zh-HK.`
            # @param [String] custom_code A pre-generated code to use for verification. The
            #   code can be between 4 and 10 characters, inclusive.
            # @param [String] amount The amount of the associated PSD2 compliant transaction.
            #   Requires the PSD2 Service flag enabled.
            # @param [String] payee The payee of the associated PSD2 compliant transaction.
            #   Requires the PSD2 Service flag enabled.
            # @param [Hash] rate_limits The custom key-value pairs of Programmable Rate
            #   Limits. Keys correspond to `unique_name` fields defined when {creating your Rate
            #   Limit}[https://www.twilio.com/docs/verify/api/service-rate-limits]. Associated
            #   value pairs represent values in the request that you are rate limiting on. You
            #   may include multiple Rate Limit values in each request.
            # @param [Hash] channel_configuration
            #   {`email`}[https://www.twilio.com/docs/verify/email] channel configuration in
            #   json format. Must include 'from' and 'from_name'.
            # @param [String] app_hash Your {App
            #   Hash}[https://developers.google.com/identity/sms-retriever/verify#computing_your_apps_hash_string]
            #   to be appended at the end of your verification SMS body. Applies only to SMS.
            #   Example SMS body: `<#> Your AppName verification code is: 1234 He42w354ol9`.
            # @return [VerificationInstance] Created VerificationInstance
            def create(to: nil, channel: nil, custom_friendly_name: :unset, custom_message: :unset, send_digits: :unset, locale: :unset, custom_code: :unset, amount: :unset, payee: :unset, rate_limits: :unset, channel_configuration: :unset, app_hash: :unset)
              data = Twilio::Values.of({
                  'To' => to,
                  'Channel' => channel,
                  'CustomFriendlyName' => custom_friendly_name,
                  'CustomMessage' => custom_message,
                  'SendDigits' => send_digits,
                  'Locale' => locale,
                  'CustomCode' => custom_code,
                  'Amount' => amount,
                  'Payee' => payee,
                  'RateLimits' => Twilio.serialize_object(rate_limits),
                  'ChannelConfiguration' => Twilio.serialize_object(channel_configuration),
                  'AppHash' => app_hash,
              })

              payload = @version.create('POST', @uri, data: data)

              VerificationInstance.new(@version, payload, service_sid: @solution[:service_sid], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '#<Twilio.Verify.V2.VerificationList>'
            end
          end

          class VerificationPage < Page
            ##
            # Initialize the VerificationPage
            # @param [Version] version Version that contains the resource
            # @param [Response] response Response from the API
            # @param [Hash] solution Path solution for the resource
            # @return [VerificationPage] VerificationPage
            def initialize(version, response, solution)
              super(version, response)

              # Path Solution
              @solution = solution
            end

            ##
            # Build an instance of VerificationInstance
            # @param [Hash] payload Payload response from the API
            # @return [VerificationInstance] VerificationInstance
            def get_instance(payload)
              VerificationInstance.new(@version, payload, service_sid: @solution[:service_sid], )
            end

            ##
            # Provide a user friendly representation
            def to_s
              '<Twilio.Verify.V2.VerificationPage>'
            end
          end

          class VerificationContext < InstanceContext
            ##
            # Initialize the VerificationContext
            # @param [Version] version Version that contains the resource
            # @param [String] service_sid The SID of the verification
            #   {Service}[https://www.twilio.com/docs/verify/api/service] to fetch the resource
            #   from.
            # @param [String] sid The Twilio-provided string that uniquely identifies the
            #   Verification resource to fetch.
            # @return [VerificationContext] VerificationContext
            def initialize(version, service_sid, sid)
              super(version)

              # Path Solution
              @solution = {service_sid: service_sid, sid: sid, }
              @uri = "/Services/#{@solution[:service_sid]}/Verifications/#{@solution[:sid]}"
            end

            ##
            # Update the VerificationInstance
            # @param [verification.Status] status The new status of the resource. Can be:
            #   `canceled` or `approved`.
            # @return [VerificationInstance] Updated VerificationInstance
            def update(status: nil)
              data = Twilio::Values.of({'Status' => status, })

              payload = @version.update('POST', @uri, data: data)

              VerificationInstance.new(
                  @version,
                  payload,
                  service_sid: @solution[:service_sid],
                  sid: @solution[:sid],
              )
            end

            ##
            # Fetch the VerificationInstance
            # @return [VerificationInstance] Fetched VerificationInstance
            def fetch
              payload = @version.fetch('GET', @uri)

              VerificationInstance.new(
                  @version,
                  payload,
                  service_sid: @solution[:service_sid],
                  sid: @solution[:sid],
              )
            end

            ##
            # Provide a user friendly representation
            def to_s
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Verify.V2.VerificationContext #{context}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
              "#<Twilio.Verify.V2.VerificationContext #{context}>"
            end
          end

          class VerificationInstance < InstanceResource
            ##
            # Initialize the VerificationInstance
            # @param [Version] version Version that contains the resource
            # @param [Hash] payload payload that contains response from Twilio
            # @param [String] service_sid The SID of the
            #   {Service}[https://www.twilio.com/docs/verify/api/service] the resource is
            #   associated with.
            # @param [String] sid The Twilio-provided string that uniquely identifies the
            #   Verification resource to fetch.
            # @return [VerificationInstance] VerificationInstance
            def initialize(version, payload, service_sid: nil, sid: nil)
              super(version)

              # Marshaled Properties
              @properties = {
                  'sid' => payload['sid'],
                  'service_sid' => payload['service_sid'],
                  'account_sid' => payload['account_sid'],
                  'to' => payload['to'],
                  'channel' => payload['channel'],
                  'status' => payload['status'],
                  'valid' => payload['valid'],
                  'lookup' => payload['lookup'],
                  'amount' => payload['amount'],
                  'payee' => payload['payee'],
                  'send_code_attempts' => payload['send_code_attempts'],
                  'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                  'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                  'url' => payload['url'],
              }

              # Context
              @instance_context = nil
              @params = {'service_sid' => service_sid, 'sid' => sid || @properties['sid'], }
            end

            ##
            # Generate an instance context for the instance, the context is capable of
            # performing various actions.  All instance actions are proxied to the context
            # @return [VerificationContext] VerificationContext for this VerificationInstance
            def context
              unless @instance_context
                @instance_context = VerificationContext.new(@version, @params['service_sid'], @params['sid'], )
              end
              @instance_context
            end

            ##
            # @return [String] The unique string that identifies the resource
            def sid
              @properties['sid']
            end

            ##
            # @return [String] The SID of the Service that the resource is associated with
            def service_sid
              @properties['service_sid']
            end

            ##
            # @return [String] The SID of the Account that created the resource
            def account_sid
              @properties['account_sid']
            end

            ##
            # @return [String] The phone number or email being verified
            def to
              @properties['to']
            end

            ##
            # @return [verification.Channel] The verification method used.
            def channel
              @properties['channel']
            end

            ##
            # @return [String] The status of the verification resource
            def status
              @properties['status']
            end

            ##
            # @return [Boolean] Whether the verification was successful
            def valid
              @properties['valid']
            end

            ##
            # @return [Hash] Information about the phone number being verified
            def lookup
              @properties['lookup']
            end

            ##
            # @return [String] The amount of the associated PSD2 compliant transaction.
            def amount
              @properties['amount']
            end

            ##
            # @return [String] The payee of the associated PSD2 compliant transaction
            def payee
              @properties['payee']
            end

            ##
            # @return [Array[Hash]] An array of verification attempt objects.
            def send_code_attempts
              @properties['send_code_attempts']
            end

            ##
            # @return [Time] The RFC 2822 date and time in GMT when the resource was created
            def date_created
              @properties['date_created']
            end

            ##
            # @return [Time] The RFC 2822 date and time in GMT when the resource was last updated
            def date_updated
              @properties['date_updated']
            end

            ##
            # @return [String] The absolute URL of the Verification resource
            def url
              @properties['url']
            end

            ##
            # Update the VerificationInstance
            # @param [verification.Status] status The new status of the resource. Can be:
            #   `canceled` or `approved`.
            # @return [VerificationInstance] Updated VerificationInstance
            def update(status: nil)
              context.update(status: status, )
            end

            ##
            # Fetch the VerificationInstance
            # @return [VerificationInstance] Fetched VerificationInstance
            def fetch
              context.fetch
            end

            ##
            # Provide a user friendly representation
            def to_s
              values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Verify.V2.VerificationInstance #{values}>"
            end

            ##
            # Provide a detailed, user friendly representation
            def inspect
              values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
              "<Twilio.Verify.V2.VerificationInstance #{values}>"
            end
          end
        end
      end
    end
  end
end