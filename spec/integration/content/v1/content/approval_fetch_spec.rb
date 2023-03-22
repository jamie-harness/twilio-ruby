##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'ApprovalFetch' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.content.v1.contents('HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                        .approval_fetch().fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://content.twilio.com/v1/Content/HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/ApprovalRequests',
    ))).to eq(true)
  end

  it "receives get_approval responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "HXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "whatsapp": {
              "type": "whatsapp",
              "name": "tree_fiddy",
              "category": "ACCOUNT_UPDATE",
              "content_type": "twilio/location",
              "status": "approved",
              "rejection_reason": "",
              "allow_category_change": true
          },
          "url": "https://content.twilio.com/v1/Content/HXaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/ApprovalRequests"
      }
      ]
    ))

    actual = @client.content.v1.contents('HXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                               .approval_fetch().fetch()

    expect(actual).to_not eq(nil)
  end
end