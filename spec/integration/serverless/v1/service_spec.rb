##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Service' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://serverless.twilio.com/v1/Services',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "services": [],
          "meta": {
              "first_page_url": "https://serverless.twilio.com/v1/Services?PageSize=50&Page=0",
              "key": "services",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://serverless.twilio.com/v1/Services?PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.serverless.v1.services.list()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "ZS00000000000000000000000000000000",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "test-service",
          "unique_name": "test-service-1",
          "include_credentials": true,
          "ui_editable": false,
          "domain_base": "test-service-1-1234",
          "date_created": "2018-11-10T20:00:00Z",
          "date_updated": "2018-11-10T20:00:00Z",
          "url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000",
          "links": {
              "environments": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments",
              "functions": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Functions",
              "assets": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Assets",
              "builds": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Builds"
          }
      }
      ]
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services.create(unique_name: 'unique_name', friendly_name: 'friendly_name')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'UniqueName' => 'unique_name', 'FriendlyName' => 'friendly_name', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://serverless.twilio.com/v1/Services',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "ZS00000000000000000000000000000000",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "service-friendly",
          "unique_name": "service-unique",
          "include_credentials": true,
          "ui_editable": false,
          "domain_base": "service-unique-1234",
          "date_created": "2018-11-10T20:00:00Z",
          "date_updated": "2018-11-10T20:00:00Z",
          "url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000",
          "links": {
              "environments": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments",
              "functions": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Functions",
              "assets": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Assets",
              "builds": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Builds"
          }
      }
      ]
    ))

    actual = @client.serverless.v1.services.create(unique_name: 'unique_name', friendly_name: 'friendly_name')

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://serverless.twilio.com/v1/Services/ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "ZS00000000000000000000000000000000",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "friendly_name": "service-friendly-update",
          "unique_name": "service-unique-update",
          "include_credentials": true,
          "ui_editable": true,
          "domain_base": "service-unique-update-1234",
          "date_created": "2018-11-10T20:00:00Z",
          "date_updated": "2018-11-10T20:00:00Z",
          "url": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000",
          "links": {
              "environments": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Environments",
              "functions": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Functions",
              "assets": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Assets",
              "builds": "https://serverless.twilio.com/v1/Services/ZS00000000000000000000000000000000/Builds"
          }
      }
      ]
    ))

    actual = @client.serverless.v1.services('ZSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end
end