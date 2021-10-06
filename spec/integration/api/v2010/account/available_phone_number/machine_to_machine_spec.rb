##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'MachineToMachine' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .available_phone_numbers('US') \
                       .machine_to_machine.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/AvailablePhoneNumbers/US/MachineToMachine.json',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "available_phone_numbers": [
              {
                  "address_requirements": "none",
                  "beta": false,
                  "capabilities": {
                      "mms": false,
                      "sms": true,
                      "voice": false
                  },
                  "friendly_name": "+4759440374",
                  "iso_country": "NO",
                  "lata": null,
                  "latitude": null,
                  "locality": null,
                  "longitude": null,
                  "phone_number": "+4759440374",
                  "postal_code": null,
                  "rate_center": null,
                  "region": null
              }
          ],
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AvailablePhoneNumbers/US/MachineToMachine.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .available_phone_numbers('US') \
                              .machine_to_machine.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "available_phone_numbers": [],
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/AvailablePhoneNumbers/US/MachineToMachine.json"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .available_phone_numbers('US') \
                              .machine_to_machine.list()

    expect(actual).to_not eq(nil)
  end
end