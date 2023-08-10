##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Chat
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Chat < ChatBase
            class V3 < Version
                class ChannelList < ListResource
                    ##
                    # Initialize the ChannelList
                    # @param [Version] version Version that contains the resource
                    # @return [ChannelList] ChannelList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        
                        
                    end
                


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Chat.V3.ChannelList>'
                    end
                end


                class ChannelContext < InstanceContext
                    ##
                    # Initialize the ChannelContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] service_sid The unique SID identifier of the Service.
                    # @param [String] sid A 34 character string that uniquely identifies this Channel.
                    # @return [ChannelContext] ChannelContext
                    def initialize(version, service_sid, sid)
                        super(version)

                        # Path Solution
                        @solution = { service_sid: service_sid, sid: sid,  }
                        @uri = "/Services/#{@solution[:service_sid]}/Channels/#{@solution[:sid]}"

                        
                    end
                    ##
                    # Update the ChannelInstance
                    # @param [ChannelType] type 
                    # @param [String] messaging_service_sid The unique ID of the [Messaging Service](https://www.twilio.com/docs/messaging/services/api) this channel belongs to.
                    # @param [ChannelEnumWebhookEnabledType] x_twilio_webhook_enabled The X-Twilio-Webhook-Enabled HTTP request header
                    # @return [ChannelInstance] Updated ChannelInstance
                    def update(
                        type: :unset, 
                        messaging_service_sid: :unset, 
                        x_twilio_webhook_enabled: :unset
                    )

                        data = Twilio::Values.of({
                            'Type' => type,
                            'MessagingServiceSid' => messaging_service_sid,
                        })

                        headers = Twilio::Values.of({ 'X-Twilio-Webhook-Enabled' => x_twilio_webhook_enabled, })
                        payload = @version.update('POST', @uri, data: data, headers: headers)
                        ChannelInstance.new(
                            @version,
                            payload,
                            service_sid: @solution[:service_sid],
                            sid: @solution[:sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Chat.V3.ChannelContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Chat.V3.ChannelContext #{context}>"
                    end
                end

                class ChannelPage < Page
                    ##
                    # Initialize the ChannelPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [ChannelPage] ChannelPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of ChannelInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [ChannelInstance] ChannelInstance
                    def get_instance(payload)
                        ChannelInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Chat.V3.ChannelPage>'
                    end
                end
                class ChannelInstance < InstanceResource
                    ##
                    # Initialize the ChannelInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Channel
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [ChannelInstance] ChannelInstance
                    def initialize(version, payload , service_sid: nil, sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'account_sid' => payload['account_sid'],
                            'service_sid' => payload['service_sid'],
                            'friendly_name' => payload['friendly_name'],
                            'unique_name' => payload['unique_name'],
                            'attributes' => payload['attributes'],
                            'type' => payload['type'],
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'created_by' => payload['created_by'],
                            'members_count' => payload['members_count'] == nil ? payload['members_count'] : payload['members_count'].to_i,
                            'messages_count' => payload['messages_count'] == nil ? payload['messages_count'] : payload['messages_count'].to_i,
                            'messaging_service_sid' => payload['messaging_service_sid'],
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'service_sid' => service_sid  || @properties['service_sid']  ,'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [ChannelContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = ChannelContext.new(@version , @params['service_sid'], @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique string that we created to identify the Channel resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Channel resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Service](https://www.twilio.com/docs/chat/rest/service-resource) the Channel resource is associated with.
                    def service_sid
                        @properties['service_sid']
                    end
                    
                    ##
                    # @return [String] The string that you assigned to describe the resource.
                    def friendly_name
                        @properties['friendly_name']
                    end
                    
                    ##
                    # @return [String] An application-defined string that uniquely identifies the resource. It can be used to address the resource in place of the resource's `sid` in the URL.
                    def unique_name
                        @properties['unique_name']
                    end
                    
                    ##
                    # @return [String] The JSON string that stores application-specific data. If attributes have not been set, `{}` is returned.
                    def attributes
                        @properties['attributes']
                    end
                    
                    ##
                    # @return [ChannelType] 
                    def type
                        @properties['type']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the resource was created specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT when the resource was last updated specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] The `identity` of the User that created the channel. If the Channel was created by using the API, the value is `system`.
                    def created_by
                        @properties['created_by']
                    end
                    
                    ##
                    # @return [String] The number of Members in the Channel.
                    def members_count
                        @properties['members_count']
                    end
                    
                    ##
                    # @return [String] The number of Messages that have been passed in the Channel.
                    def messages_count
                        @properties['messages_count']
                    end
                    
                    ##
                    # @return [String] The unique ID of the [Messaging Service](https://www.twilio.com/docs/messaging/services/api) this channel belongs to.
                    def messaging_service_sid
                        @properties['messaging_service_sid']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the Channel resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Update the ChannelInstance
                    # @param [ChannelType] type 
                    # @param [String] messaging_service_sid The unique ID of the [Messaging Service](https://www.twilio.com/docs/messaging/services/api) this channel belongs to.
                    # @param [ChannelEnumWebhookEnabledType] x_twilio_webhook_enabled The X-Twilio-Webhook-Enabled HTTP request header
                    # @return [ChannelInstance] Updated ChannelInstance
                    def update(
                        type: :unset, 
                        messaging_service_sid: :unset, 
                        x_twilio_webhook_enabled: :unset
                    )

                        context.update(
                            type: type, 
                            messaging_service_sid: messaging_service_sid, 
                            x_twilio_webhook_enabled: x_twilio_webhook_enabled, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Chat.V3.ChannelInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Chat.V3.ChannelInstance #{values}>"
                    end
                end

            end
        end
    end
end
