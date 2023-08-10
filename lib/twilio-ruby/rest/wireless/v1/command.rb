##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Wireless
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Wireless < WirelessBase
            class V1 < Version
                class CommandList < ListResource
                    ##
                    # Initialize the CommandList
                    # @param [Version] version Version that contains the resource
                    # @return [CommandList] CommandList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/Commands"
                        
                    end
                    ##
                    # Create the CommandInstance
                    # @param [String] command The message body of the Command. Can be plain text in text mode or a Base64 encoded byte string in binary mode.
                    # @param [String] sim The `sid` or `unique_name` of the [SIM](https://www.twilio.com/docs/iot/wireless/api/sim-resource) to send the Command to.
                    # @param [String] callback_method The HTTP method we use to call `callback_url`. Can be: `POST` or `GET`, and the default is `POST`.
                    # @param [String] callback_url The URL we call using the `callback_url` when the Command has finished sending, whether the command was delivered or it failed.
                    # @param [CommandMode] command_mode 
                    # @param [String] include_sid Whether to include the SID of the command in the message body. Can be: `none`, `start`, or `end`, and the default behavior is `none`. When sending a Command to a SIM in text mode, we can automatically include the SID of the Command in the message body, which could be used to ensure that the device does not process the same Command more than once.  A value of `start` will prepend the message with the Command SID, and `end` will append it to the end, separating the Command SID from the message body with a space. The length of the Command SID is included in the 160 character limit so the SMS body must be 128 characters or less before the Command SID is included.
                    # @param [Boolean] delivery_receipt_requested Whether to request delivery receipt from the recipient. For Commands that request delivery receipt, the Command state transitions to 'delivered' once the server has received a delivery receipt from the device. The default value is `true`.
                    # @return [CommandInstance] Created CommandInstance
                    def create(
                        command: nil, 
                        sim: :unset, 
                        callback_method: :unset, 
                        callback_url: :unset, 
                        command_mode: :unset, 
                        include_sid: :unset, 
                        delivery_receipt_requested: :unset
                    )

                        data = Twilio::Values.of({
                            'Command' => command,
                            'Sim' => sim,
                            'CallbackMethod' => callback_method,
                            'CallbackUrl' => callback_url,
                            'CommandMode' => command_mode,
                            'IncludeSid' => include_sid,
                            'DeliveryReceiptRequested' => delivery_receipt_requested,
                        })

                        payload = @version.create('POST', @uri, data: data)
                        CommandInstance.new(
                            @version,
                            payload,
                        )
                    end

                
                    ##
                    # Lists CommandInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [String] sim The `sid` or `unique_name` of the [Sim resources](https://www.twilio.com/docs/iot/wireless/api/sim-resource) to read.
                    # @param [Status] status The status of the resources to read. Can be: `queued`, `sent`, `delivered`, `received`, or `failed`.
                    # @param [Direction] direction Only return Commands with this direction value.
                    # @param [Transport] transport Only return Commands with this transport value. Can be: `sms` or `ip`.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(sim: :unset, status: :unset, direction: :unset, transport: :unset, limit: nil, page_size: nil)
                        self.stream(
                            sim: sim,
                            status: status,
                            direction: direction,
                            transport: transport,
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [String] sim The `sid` or `unique_name` of the [Sim resources](https://www.twilio.com/docs/iot/wireless/api/sim-resource) to read.
                    # @param [Status] status The status of the resources to read. Can be: `queued`, `sent`, `delivered`, `received`, or `failed`.
                    # @param [Direction] direction Only return Commands with this direction value.
                    # @param [Transport] transport Only return Commands with this transport value. Can be: `sms` or `ip`.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(sim: :unset, status: :unset, direction: :unset, transport: :unset, limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            sim: sim,
                            status: status,
                            direction: direction,
                            transport: transport,
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields CommandInstance records from the API.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    def each
                        limits = @version.read_limits

                        page = self.page(page_size: limits[:page_size], )

                        @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
                    end

                    ##
                    # Retrieve a single page of CommandInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] sim The `sid` or `unique_name` of the [Sim resources](https://www.twilio.com/docs/iot/wireless/api/sim-resource) to read.
                    # @param [Status] status The status of the resources to read. Can be: `queued`, `sent`, `delivered`, `received`, or `failed`.
                    # @param [Direction] direction Only return Commands with this direction value.
                    # @param [Transport] transport Only return Commands with this transport value. Can be: `sms` or `ip`.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of CommandInstance
                    def page(sim: :unset, status: :unset, direction: :unset, transport: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'Sim' => sim,
                            'Status' => status,
                            'Direction' => direction,
                            'Transport' => transport,
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        CommandPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of CommandInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of CommandInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    CommandPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Wireless.V1.CommandList>'
                    end
                end


                class CommandContext < InstanceContext
                    ##
                    # Initialize the CommandContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] sid The SID of the Command resource to fetch.
                    # @return [CommandContext] CommandContext
                    def initialize(version, sid)
                        super(version)

                        # Path Solution
                        @solution = { sid: sid,  }
                        @uri = "/Commands/#{@solution[:sid]}"

                        
                    end
                    ##
                    # Delete the CommandInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        @version.delete('DELETE', @uri)
                    end

                    ##
                    # Fetch the CommandInstance
                    # @return [CommandInstance] Fetched CommandInstance
                    def fetch

                        payload = @version.fetch('GET', @uri)
                        CommandInstance.new(
                            @version,
                            payload,
                            sid: @solution[:sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Wireless.V1.CommandContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Wireless.V1.CommandContext #{context}>"
                    end
                end

                class CommandPage < Page
                    ##
                    # Initialize the CommandPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [CommandPage] CommandPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of CommandInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [CommandInstance] CommandInstance
                    def get_instance(payload)
                        CommandInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Wireless.V1.CommandPage>'
                    end
                end
                class CommandInstance < InstanceResource
                    ##
                    # Initialize the CommandInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Command
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [CommandInstance] CommandInstance
                    def initialize(version, payload , sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'account_sid' => payload['account_sid'],
                            'sim_sid' => payload['sim_sid'],
                            'command' => payload['command'],
                            'command_mode' => payload['command_mode'],
                            'transport' => payload['transport'],
                            'delivery_receipt_requested' => payload['delivery_receipt_requested'],
                            'status' => payload['status'],
                            'direction' => payload['direction'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [CommandContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = CommandContext.new(@version , @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique string that we created to identify the Command resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Command resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Sim resource](https://www.twilio.com/docs/iot/wireless/api/sim-resource) that the Command was sent to or from.
                    def sim_sid
                        @properties['sim_sid']
                    end
                    
                    ##
                    # @return [String] The message being sent to or from the SIM. For text mode messages, this can be up to 160 characters. For binary mode messages, this is a series of up to 140 bytes of data encoded using base64.
                    def command
                        @properties['command']
                    end
                    
                    ##
                    # @return [CommandMode] 
                    def command_mode
                        @properties['command_mode']
                    end
                    
                    ##
                    # @return [Transport] 
                    def transport
                        @properties['transport']
                    end
                    
                    ##
                    # @return [Boolean] Whether to request a delivery receipt.
                    def delivery_receipt_requested
                        @properties['delivery_receipt_requested']
                    end
                    
                    ##
                    # @return [Status] 
                    def status
                        @properties['status']
                    end
                    
                    ##
                    # @return [Direction] 
                    def direction
                        @properties['direction']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the resource was created specified in [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the resource was last updated specified in [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Delete the CommandInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        context.delete
                    end

                    ##
                    # Fetch the CommandInstance
                    # @return [CommandInstance] Fetched CommandInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Wireless.V1.CommandInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Wireless.V1.CommandInstance #{values}>"
                    end
                end

            end
        end
    end
end
