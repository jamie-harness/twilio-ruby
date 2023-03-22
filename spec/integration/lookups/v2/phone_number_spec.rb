##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'PhoneNumber' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.lookups.v2.phone_numbers('phone_number').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://lookups.twilio.com/v2/PhoneNumbers/phone_number',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "1",
          "country_code": "US",
          "phone_number": "+14159929960",
          "national_format": "(415) 992-9960",
          "valid": true,
          "validation_errors": null,
          "caller_name": null,
          "sim_swap": null,
          "call_forwarding": null,
          "live_activity": null,
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+14159929960"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_invalid responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": null,
          "country_code": null,
          "phone_number": "+141599299600",
          "national_format": null,
          "valid": false,
          "validation_errors": [
              "TOO_LONG"
          ],
          "caller_name": null,
          "sim_swap": null,
          "call_forwarding": null,
          "live_activity": null,
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+141599299600"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_caller_name responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "1",
          "country_code": "US",
          "phone_number": "+14159929960",
          "national_format": "(415) 992-9960",
          "valid": true,
          "validation_errors": null,
          "caller_name": {
              "caller_name": "Sergio Suarez",
              "caller_type": "CONSUMER",
              "error_code": null
          },
          "sim_swap": null,
          "call_forwarding": null,
          "live_activity": null,
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+14159929960"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_sim_swap responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "44",
          "country_code": "GB",
          "phone_number": "+447772000001",
          "national_format": "07772 000001",
          "valid": true,
          "validation_errors": null,
          "caller_name": null,
          "sim_swap": {
              "last_sim_swap": {
                  "last_sim_swap_date": "2020-04-27T10:18:50Z",
                  "swapped_period": "PT15282H33M44S",
                  "swapped_in_period": true
              },
              "carrier_name": "Vodafone UK",
              "mobile_country_code": "276",
              "mobile_network_code": "02",
              "error_code": null
          },
          "call_forwarding": null,
          "live_activity": null,
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+447772000001"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_sim_swap_without_last_sim_swap_date responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "44",
          "country_code": "GB",
          "phone_number": "+447772000001",
          "national_format": "07772 000001",
          "valid": true,
          "validation_errors": null,
          "caller_name": null,
          "sim_swap": {
              "last_sim_swap": {
                  "last_sim_swap_date": null,
                  "swapped_period": "PT24H",
                  "swapped_in_period": true
              },
              "carrier_name": "Vodafone UK",
              "mobile_country_code": "276",
              "mobile_network_code": "02",
              "error_code": null
          },
          "call_forwarding": null,
          "live_activity": null,
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+447772000001"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_sim_swap_with_false_swapped responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "44",
          "country_code": "GB",
          "phone_number": "+447772000001",
          "national_format": "07772 000001",
          "valid": true,
          "validation_errors": null,
          "caller_name": null,
          "sim_swap": {
              "last_sim_swap": {
                  "last_sim_swap_date": null,
                  "swapped_period": "PT24H",
                  "swapped_in_period": false
              },
              "carrier_name": "Vodafone UK",
              "mobile_country_code": "276",
              "mobile_network_code": "02",
              "error_code": null
          },
          "call_forwarding": null,
          "live_activity": null,
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+447772000001"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_call_forwarding responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "44",
          "country_code": "GB",
          "phone_number": "+447772000001",
          "national_format": "07772 000001",
          "valid": true,
          "validation_errors": null,
          "caller_name": null,
          "sim_swap": null,
          "call_forwarding": {
              "call_forwarding_status": "true",
              "carrier_name": "Vodafone UK",
              "mobile_country_code": "276",
              "mobile_network_code": "02",
              "error_code": null
          },
          "live_activity": null,
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+447772000001"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_sim_swap_and_call_forwarding responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "44",
          "country_code": "GB",
          "phone_number": "+447772000001",
          "national_format": "07772 000001",
          "valid": true,
          "validation_errors": null,
          "caller_name": null,
          "sim_swap": {
              "last_sim_swap": {
                  "last_sim_swap_date": "2020-11-05T20:52:09.322Z",
                  "swapped_period": "PT24H",
                  "swapped_in_period": true
              },
              "carrier_name": "Vodafone UK",
              "mobile_country_code": "276",
              "mobile_network_code": "02",
              "error_code": null
          },
          "call_forwarding": {
              "call_forwarding_status": "true",
              "carrier_name": "Vodafone UK",
              "mobile_country_code": "276",
              "mobile_network_code": "02",
              "error_code": null
          },
          "live_activity": null,
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+447772000001"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_live_activity_connectivity responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "44",
          "country_code": "GB",
          "phone_number": "+447772000001",
          "national_format": "07772 000001",
          "valid": true,
          "validation_errors": null,
          "caller_name": null,
          "sim_swap": null,
          "call_forwarding": null,
          "live_activity": {
              "connectivity": "connected",
              "original_carrier": {
                  "name": "Vodafone",
                  "mobile_country_code": "234",
                  "mobile_network_code": "15"
              },
              "ported": "false",
              "ported_carrier": null,
              "roaming": "false",
              "roaming_carrier": null,
              "error_code": null
          },
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+447772000001"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_live_activity_porting responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "44",
          "country_code": "GB",
          "phone_number": "+447772000001",
          "national_format": "07772 000001",
          "valid": true,
          "validation_errors": null,
          "caller_name": null,
          "sim_swap": null,
          "call_forwarding": null,
          "live_activity": {
              "connectivity": "connected",
              "original_carrier": {
                  "name": "Vodafone",
                  "mobile_country_code": "234",
                  "mobile_network_code": "15"
              },
              "ported": "true",
              "ported_carrier": {
                  "name": "Orange",
                  "mobile_country_code": "266",
                  "mobile_network_code": "10"
              },
              "roaming": "false",
              "roaming_carrier": null,
              "error_code": null
          },
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+447772000001"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_live_activity_roaming responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "44",
          "country_code": "GB",
          "phone_number": "+447772000001",
          "national_format": "07772 000001",
          "valid": true,
          "validation_errors": null,
          "caller_name": null,
          "sim_swap": null,
          "call_forwarding": null,
          "live_activity": {
              "connectivity": "connected",
              "original_carrier": {
                  "name": "Vodafone",
                  "mobile_country_code": "234",
                  "mobile_network_code": "15"
              },
              "ported": "false",
              "ported_carrier": null,
              "roaming": "true",
              "roaming_carrier": {
                  "name": "Orange",
                  "mobile_country_code": "266",
                  "mobile_network_code": "10",
                  "country_code": "RO"
              },
              "error_code": null
          },
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+447772000001"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_line_type_intelligence responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "1",
          "country_code": "US",
          "phone_number": "+14159929960",
          "national_format": "(415) 992-9960",
          "valid": true,
          "validation_errors": null,
          "caller_name": null,
          "sim_swap": null,
          "call_forwarding": null,
          "live_activity": null,
          "line_type_intelligence": {
              "error_code": null,
              "mobile_country_code": "240",
              "mobile_network_code": "38",
              "carrier_name": "Twilio - SMS/MMS-SVR",
              "type": "nonFixedVoip"
          },
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+14159929960"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_identity_match responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "1",
          "country_code": "US",
          "phone_number": "+14159929960",
          "national_format": "(415) 992-9960",
          "valid": true,
          "validation_errors": [],
          "caller_name": null,
          "sim_swap": null,
          "call_forwarding": null,
          "live_activity": null,
          "line_type_intelligence": null,
          "identity_match": {
              "first_name_match": "exact_match",
              "last_name_match": "high_partial_match",
              "address_lines_match": "no_match",
              "city_match": "no_match",
              "state_match": "high_partial_match",
              "postal_code_match": "no_data_available",
              "address_country_match": "exact_match",
              "national_id_match": "exact_match",
              "date_of_birth_match": "exact_match",
              "summary_score": 90,
              "error_code": null,
              "error_message": null
          },
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+14159929960"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_sms_pumping_risk responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "1",
          "country_code": "US",
          "phone_number": "+14159929960",
          "national_format": "(415) 992-9960",
          "valid": true,
          "validation_errors": [],
          "caller_name": null,
          "sim_swap": null,
          "call_forwarding": null,
          "live_activity": null,
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": {
              "carrier": {
                  "name": "Twilio Carrier",
                  "mobile_country_code": "214",
                  "mobile_network_code": "07",
                  "carrier_risk_score": 69,
                  "carrier_risk_category": "moderate"
              },
              "number_blocked": false,
              "number_blocked_date": null,
              "number_blocked_last_3_months": null,
              "sms_pumping_risk_score": 61,
              "error_code": null
          },
          "disposable_phone_number_risk": null,
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+14159929960"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end

  it "receives fetch_disposable_phone_number_risk responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "calling_country_code": "1",
          "country_code": "US",
          "phone_number": "+14159929960",
          "national_format": "(415) 992-9960",
          "valid": true,
          "validation_errors": [],
          "caller_name": null,
          "sim_swap": null,
          "call_forwarding": null,
          "live_activity": null,
          "line_type_intelligence": null,
          "identity_match": null,
          "sms_pumping_risk": null,
          "disposable_phone_number_risk": {
              "carrier": {
                  "mobile_country_code": "452",
                  "mobile_network_code": "05",
                  "carrier_risk_score": 17,
                  "carrier_risk_category": "low",
                  "line_type": "mobile",
                  "name": "Twilio Carrier"
              },
              "is_disposable": false,
              "disposable_phone_risk_score": 0,
              "disposable_phone_risk_category": "low",
              "velocity_risk_score": 0,
              "velocity_risk_category": "low",
              "summary_risk_score": 0,
              "summary_risk_category": "low",
              "error_code": null
          },
          "url": "https://lookups.twilio.com/v2/PhoneNumbers/+14159929960"
      }
      ]
    ))

    actual = @client.lookups.v2.phone_numbers('phone_number').fetch()

    expect(actual).to_not eq(nil)
  end
end