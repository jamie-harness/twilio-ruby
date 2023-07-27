##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Insights
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Insights < InsightsBase
            class V1 < Version
                class CallSummariesList < ListResource
                    ##
                    # Initialize the CallSummariesList
                    # @param [Version] version Version that contains the resource
                    # @return [CallSummariesList] CallSummariesList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/Voice/Summaries"
                        
                    end
                
                    ##
                    # Lists CallSummariesInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [String] from A calling party. Could be an E.164 number, a SIP URI, or a Twilio Client registered name.
                    # @param [String] to A called party. Could be an E.164 number, a SIP URI, or a Twilio Client registered name.
                    # @param [String] from_carrier An origination carrier.
                    # @param [String] to_carrier A destination carrier.
                    # @param [String] from_country_code A source country code based on phone number in From.
                    # @param [String] to_country_code A destination country code. Based on phone number in To.
                    # @param [Boolean] branded A boolean flag indicating whether or not the calls were branded using Twilio Branded Calls.
                    # @param [Boolean] verified_caller A boolean flag indicating whether or not the caller was verified using SHAKEN/STIR.
                    # @param [Boolean] has_tag A boolean flag indicating the presence of one or more [Voice Insights Call Tags](https://www.twilio.com/docs/voice/voice-insights/api/call/details-call-tags).
                    # @param [String] start_time A Start time of the calls. xm (x minutes), xh (x hours), xd (x days), 1w, 30m, 3d, 4w or datetime-ISO. Defaults to 4h.
                    # @param [String] end_time An End Time of the calls. xm (x minutes), xh (x hours), xd (x days), 1w, 30m, 3d, 4w or datetime-ISO. Defaults to 0m.
                    # @param [String] call_type A Call Type of the calls. One of `carrier`, `sip`, `trunking` or `client`.
                    # @param [String] call_state A Call State of the calls. One of `ringing`, `completed`, `busy`, `fail`, `noanswer`, `canceled`, `answered`, `undialed`.
                    # @param [String] direction A Direction of the calls. One of `outbound_api`, `outbound_dial`, `inbound`, `trunking_originating`, `trunking_terminating`.
                    # @param [ProcessingStateRequest] processing_state A Processing State of the Call Summaries. One of `completed`, `partial` or `all`.
                    # @param [SortBy] sort_by A Sort By criterion for the returned list of Call Summaries. One of `start_time` or `end_time`.
                    # @param [String] subaccount A unique SID identifier of a Subaccount.
                    # @param [Boolean] abnormal_session A boolean flag indicating an abnormal session where the last SIP response was not 200 OK.
                    # @param [AnsweredBy] answered_by An Answered By value for the calls based on `Answering Machine Detection (AMD)`. One of `unknown`, `machine_start`, `machine_end_beep`, `machine_end_silence`, `machine_end_other`, `human` or `fax`.
                    # @param [String] connectivity_issue A Connectivity Issue with the calls. One of `no_connectivity_issue`, `invalid_number`, `caller_id`, `dropped_call`, or `number_reachability`.
                    # @param [String] quality_issue A subjective Quality Issue with the calls. One of `no_quality_issue`, `low_volume`, `choppy_robotic`, `echo`, `dtmf`, `latency`, `owa`, `static_noise`.
                    # @param [Boolean] spam A boolean flag indicating spam calls.
                    # @param [String] call_score A Call Score of the calls. Use a range of 1-5 to indicate the call experience score, with the following mapping as a reference for the rated call [5: Excellent, 4: Good, 3 : Fair, 2 : Poor, 1: Bad].
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(from: :unset, to: :unset, from_carrier: :unset, to_carrier: :unset, from_country_code: :unset, to_country_code: :unset, branded: :unset, verified_caller: :unset, has_tag: :unset, start_time: :unset, end_time: :unset, call_type: :unset, call_state: :unset, direction: :unset, processing_state: :unset, sort_by: :unset, subaccount: :unset, abnormal_session: :unset, answered_by: :unset, connectivity_issue: :unset, quality_issue: :unset, spam: :unset, call_score: :unset, limit: nil, page_size: nil)
                        self.stream(
                            from: from,
                            to: to,
                            from_carrier: from_carrier,
                            to_carrier: to_carrier,
                            from_country_code: from_country_code,
                            to_country_code: to_country_code,
                            branded: branded,
                            verified_caller: verified_caller,
                            has_tag: has_tag,
                            start_time: start_time,
                            end_time: end_time,
                            call_type: call_type,
                            call_state: call_state,
                            direction: direction,
                            processing_state: processing_state,
                            sort_by: sort_by,
                            subaccount: subaccount,
                            abnormal_session: abnormal_session,
                            answered_by: answered_by,
                            connectivity_issue: connectivity_issue,
                            quality_issue: quality_issue,
                            spam: spam,
                            call_score: call_score,
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [String] from A calling party. Could be an E.164 number, a SIP URI, or a Twilio Client registered name.
                    # @param [String] to A called party. Could be an E.164 number, a SIP URI, or a Twilio Client registered name.
                    # @param [String] from_carrier An origination carrier.
                    # @param [String] to_carrier A destination carrier.
                    # @param [String] from_country_code A source country code based on phone number in From.
                    # @param [String] to_country_code A destination country code. Based on phone number in To.
                    # @param [Boolean] branded A boolean flag indicating whether or not the calls were branded using Twilio Branded Calls.
                    # @param [Boolean] verified_caller A boolean flag indicating whether or not the caller was verified using SHAKEN/STIR.
                    # @param [Boolean] has_tag A boolean flag indicating the presence of one or more [Voice Insights Call Tags](https://www.twilio.com/docs/voice/voice-insights/api/call/details-call-tags).
                    # @param [String] start_time A Start time of the calls. xm (x minutes), xh (x hours), xd (x days), 1w, 30m, 3d, 4w or datetime-ISO. Defaults to 4h.
                    # @param [String] end_time An End Time of the calls. xm (x minutes), xh (x hours), xd (x days), 1w, 30m, 3d, 4w or datetime-ISO. Defaults to 0m.
                    # @param [String] call_type A Call Type of the calls. One of `carrier`, `sip`, `trunking` or `client`.
                    # @param [String] call_state A Call State of the calls. One of `ringing`, `completed`, `busy`, `fail`, `noanswer`, `canceled`, `answered`, `undialed`.
                    # @param [String] direction A Direction of the calls. One of `outbound_api`, `outbound_dial`, `inbound`, `trunking_originating`, `trunking_terminating`.
                    # @param [ProcessingStateRequest] processing_state A Processing State of the Call Summaries. One of `completed`, `partial` or `all`.
                    # @param [SortBy] sort_by A Sort By criterion for the returned list of Call Summaries. One of `start_time` or `end_time`.
                    # @param [String] subaccount A unique SID identifier of a Subaccount.
                    # @param [Boolean] abnormal_session A boolean flag indicating an abnormal session where the last SIP response was not 200 OK.
                    # @param [AnsweredBy] answered_by An Answered By value for the calls based on `Answering Machine Detection (AMD)`. One of `unknown`, `machine_start`, `machine_end_beep`, `machine_end_silence`, `machine_end_other`, `human` or `fax`.
                    # @param [String] connectivity_issue A Connectivity Issue with the calls. One of `no_connectivity_issue`, `invalid_number`, `caller_id`, `dropped_call`, or `number_reachability`.
                    # @param [String] quality_issue A subjective Quality Issue with the calls. One of `no_quality_issue`, `low_volume`, `choppy_robotic`, `echo`, `dtmf`, `latency`, `owa`, `static_noise`.
                    # @param [Boolean] spam A boolean flag indicating spam calls.
                    # @param [String] call_score A Call Score of the calls. Use a range of 1-5 to indicate the call experience score, with the following mapping as a reference for the rated call [5: Excellent, 4: Good, 3 : Fair, 2 : Poor, 1: Bad].
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(from: :unset, to: :unset, from_carrier: :unset, to_carrier: :unset, from_country_code: :unset, to_country_code: :unset, branded: :unset, verified_caller: :unset, has_tag: :unset, start_time: :unset, end_time: :unset, call_type: :unset, call_state: :unset, direction: :unset, processing_state: :unset, sort_by: :unset, subaccount: :unset, abnormal_session: :unset, answered_by: :unset, connectivity_issue: :unset, quality_issue: :unset, spam: :unset, call_score: :unset, limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            from: from,
                            to: to,
                            from_carrier: from_carrier,
                            to_carrier: to_carrier,
                            from_country_code: from_country_code,
                            to_country_code: to_country_code,
                            branded: branded,
                            verified_caller: verified_caller,
                            has_tag: has_tag,
                            start_time: start_time,
                            end_time: end_time,
                            call_type: call_type,
                            call_state: call_state,
                            direction: direction,
                            processing_state: processing_state,
                            sort_by: sort_by,
                            subaccount: subaccount,
                            abnormal_session: abnormal_session,
                            answered_by: answered_by,
                            connectivity_issue: connectivity_issue,
                            quality_issue: quality_issue,
                            spam: spam,
                            call_score: call_score,
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields CallSummariesInstance records from the API.
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
                    # Retrieve a single page of CallSummariesInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] from A calling party. Could be an E.164 number, a SIP URI, or a Twilio Client registered name.
                    # @param [String] to A called party. Could be an E.164 number, a SIP URI, or a Twilio Client registered name.
                    # @param [String] from_carrier An origination carrier.
                    # @param [String] to_carrier A destination carrier.
                    # @param [String] from_country_code A source country code based on phone number in From.
                    # @param [String] to_country_code A destination country code. Based on phone number in To.
                    # @param [Boolean] branded A boolean flag indicating whether or not the calls were branded using Twilio Branded Calls.
                    # @param [Boolean] verified_caller A boolean flag indicating whether or not the caller was verified using SHAKEN/STIR.
                    # @param [Boolean] has_tag A boolean flag indicating the presence of one or more [Voice Insights Call Tags](https://www.twilio.com/docs/voice/voice-insights/api/call/details-call-tags).
                    # @param [String] start_time A Start time of the calls. xm (x minutes), xh (x hours), xd (x days), 1w, 30m, 3d, 4w or datetime-ISO. Defaults to 4h.
                    # @param [String] end_time An End Time of the calls. xm (x minutes), xh (x hours), xd (x days), 1w, 30m, 3d, 4w or datetime-ISO. Defaults to 0m.
                    # @param [String] call_type A Call Type of the calls. One of `carrier`, `sip`, `trunking` or `client`.
                    # @param [String] call_state A Call State of the calls. One of `ringing`, `completed`, `busy`, `fail`, `noanswer`, `canceled`, `answered`, `undialed`.
                    # @param [String] direction A Direction of the calls. One of `outbound_api`, `outbound_dial`, `inbound`, `trunking_originating`, `trunking_terminating`.
                    # @param [ProcessingStateRequest] processing_state A Processing State of the Call Summaries. One of `completed`, `partial` or `all`.
                    # @param [SortBy] sort_by A Sort By criterion for the returned list of Call Summaries. One of `start_time` or `end_time`.
                    # @param [String] subaccount A unique SID identifier of a Subaccount.
                    # @param [Boolean] abnormal_session A boolean flag indicating an abnormal session where the last SIP response was not 200 OK.
                    # @param [AnsweredBy] answered_by An Answered By value for the calls based on `Answering Machine Detection (AMD)`. One of `unknown`, `machine_start`, `machine_end_beep`, `machine_end_silence`, `machine_end_other`, `human` or `fax`.
                    # @param [String] connectivity_issue A Connectivity Issue with the calls. One of `no_connectivity_issue`, `invalid_number`, `caller_id`, `dropped_call`, or `number_reachability`.
                    # @param [String] quality_issue A subjective Quality Issue with the calls. One of `no_quality_issue`, `low_volume`, `choppy_robotic`, `echo`, `dtmf`, `latency`, `owa`, `static_noise`.
                    # @param [Boolean] spam A boolean flag indicating spam calls.
                    # @param [String] call_score A Call Score of the calls. Use a range of 1-5 to indicate the call experience score, with the following mapping as a reference for the rated call [5: Excellent, 4: Good, 3 : Fair, 2 : Poor, 1: Bad].
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of CallSummariesInstance
                    def page(from: :unset, to: :unset, from_carrier: :unset, to_carrier: :unset, from_country_code: :unset, to_country_code: :unset, branded: :unset, verified_caller: :unset, has_tag: :unset, start_time: :unset, end_time: :unset, call_type: :unset, call_state: :unset, direction: :unset, processing_state: :unset, sort_by: :unset, subaccount: :unset, abnormal_session: :unset, answered_by: :unset, connectivity_issue: :unset, quality_issue: :unset, spam: :unset, call_score: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'From' => from,
                            'To' => to,
                            'FromCarrier' => from_carrier,
                            'ToCarrier' => to_carrier,
                            'FromCountryCode' => from_country_code,
                            'ToCountryCode' => to_country_code,
                            'Branded' => branded,
                            'VerifiedCaller' => verified_caller,
                            'HasTag' => has_tag,
                            'StartTime' => start_time,
                            'EndTime' => end_time,
                            'CallType' => call_type,
                            'CallState' => call_state,
                            'Direction' => direction,
                            'ProcessingState' => processing_state,
                            'SortBy' => sort_by,
                            'Subaccount' => subaccount,
                            'AbnormalSession' => abnormal_session,
                            'AnsweredBy' => answered_by,
                            'ConnectivityIssue' => connectivity_issue,
                            'QualityIssue' => quality_issue,
                            'Spam' => spam,
                            'CallScore' => call_score,
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        CallSummariesPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of CallSummariesInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of CallSummariesInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    CallSummariesPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Insights.V1.CallSummariesList>'
                    end
                end

                class CallSummariesPage < Page
                    ##
                    # Initialize the CallSummariesPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [CallSummariesPage] CallSummariesPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of CallSummariesInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [CallSummariesInstance] CallSummariesInstance
                    def get_instance(payload)
                        CallSummariesInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Insights.V1.CallSummariesPage>'
                    end
                end
                class CallSummariesInstance < InstanceResource
                    ##
                    # Initialize the CallSummariesInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this CallSummaries
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [CallSummariesInstance] CallSummariesInstance
                    def initialize(version, payload )
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'call_sid' => payload['call_sid'],
                            'answered_by' => payload['answered_by'],
                            'call_type' => payload['call_type'],
                            'call_state' => payload['call_state'],
                            'processing_state' => payload['processing_state'],
                            'created_time' => Twilio.deserialize_iso8601_datetime(payload['created_time']),
                            'start_time' => Twilio.deserialize_iso8601_datetime(payload['start_time']),
                            'end_time' => Twilio.deserialize_iso8601_datetime(payload['end_time']),
                            'duration' => payload['duration'] == nil ? payload['duration'] : payload['duration'].to_i,
                            'connect_duration' => payload['connect_duration'] == nil ? payload['connect_duration'] : payload['connect_duration'].to_i,
                            'from' => payload['from'],
                            'to' => payload['to'],
                            'carrier_edge' => payload['carrier_edge'],
                            'client_edge' => payload['client_edge'],
                            'sdk_edge' => payload['sdk_edge'],
                            'sip_edge' => payload['sip_edge'],
                            'tags' => payload['tags'],
                            'url' => payload['url'],
                            'attributes' => payload['attributes'],
                            'properties' => payload['properties'],
                            'trust' => payload['trust'],
                            'annotation' => payload['annotation'],
                        }
                    end

                    
                    ##
                    # @return [String] The unique SID identifier of the Account.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The unique SID identifier of the Call.
                    def call_sid
                        @properties['call_sid']
                    end
                    
                    ##
                    # @return [AnsweredBy] 
                    def answered_by
                        @properties['answered_by']
                    end
                    
                    ##
                    # @return [CallType] 
                    def call_type
                        @properties['call_type']
                    end
                    
                    ##
                    # @return [CallState] 
                    def call_state
                        @properties['call_state']
                    end
                    
                    ##
                    # @return [ProcessingState] 
                    def processing_state
                        @properties['processing_state']
                    end
                    
                    ##
                    # @return [Time] The time at which the Call was created, given in ISO 8601 format. Can be different from `start_time` in the event of queueing due to CPS
                    def created_time
                        @properties['created_time']
                    end
                    
                    ##
                    # @return [Time] The time at which the Call was started, given in ISO 8601 format.
                    def start_time
                        @properties['start_time']
                    end
                    
                    ##
                    # @return [Time] The time at which the Call was ended, given in ISO 8601 format.
                    def end_time
                        @properties['end_time']
                    end
                    
                    ##
                    # @return [String] Duration between when the call was initiated and the call was ended
                    def duration
                        @properties['duration']
                    end
                    
                    ##
                    # @return [String] Duration between when the call was answered and when it ended
                    def connect_duration
                        @properties['connect_duration']
                    end
                    
                    ##
                    # @return [Hash] The calling party.
                    def from
                        @properties['from']
                    end
                    
                    ##
                    # @return [Hash] The called party.
                    def to
                        @properties['to']
                    end
                    
                    ##
                    # @return [Hash] Contains metrics and properties for the Twilio media gateway of a PSTN call.
                    def carrier_edge
                        @properties['carrier_edge']
                    end
                    
                    ##
                    # @return [Hash] Contains metrics and properties for the Twilio media gateway of a Client call.
                    def client_edge
                        @properties['client_edge']
                    end
                    
                    ##
                    # @return [Hash] Contains metrics and properties for the SDK sensor library for Client calls.
                    def sdk_edge
                        @properties['sdk_edge']
                    end
                    
                    ##
                    # @return [Hash] Contains metrics and properties for the Twilio media gateway of a SIP Interface or Trunking call.
                    def sip_edge
                        @properties['sip_edge']
                    end
                    
                    ##
                    # @return [Array<String>] Tags applied to calls by Voice Insights analysis indicating a condition that could result in subjective degradation of the call quality.
                    def tags
                        @properties['tags']
                    end
                    
                    ##
                    # @return [String] The URL of this resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # @return [Hash] Attributes capturing call-flow-specific details.
                    def attributes
                        @properties['attributes']
                    end
                    
                    ##
                    # @return [Hash] Contains edge-agnostic call-level details.
                    def properties
                        @properties['properties']
                    end
                    
                    ##
                    # @return [Hash] Contains trusted communications details including Branded Call and verified caller ID.
                    def trust
                        @properties['trust']
                    end
                    
                    ##
                    # @return [Hash] 
                    def annotation
                        @properties['annotation']
                    end
                    
                    ##
                    # Provide a user friendly representation
                    def to_s
                        "<Twilio.Insights.V1.CallSummariesInstance>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        "<Twilio.Insights.V1.CallSummariesInstance>"
                    end
                end

            end
        end
    end
end
