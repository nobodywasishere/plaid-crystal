#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

# Unit tests for Plaid::SandboxItemFireWebhookRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/plaid/models/sandbox_item_fire_webhook_request"

describe Plaid::SandboxItemFireWebhookRequest do
  describe "test an instance of SandboxItemFireWebhookRequest" do
    it "should create an instance of SandboxItemFireWebhookRequest" do
      # instance = Plaid::SandboxItemFireWebhookRequest.new
      # (instance).should be_a(Plaid::SandboxItemFireWebhookRequest)
    end
  end

  describe "test attribute 'client_id'" do
    it "should work" do
      # instance = Plaid::SandboxItemFireWebhookRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'secret'" do
    it "should work" do
      # instance = Plaid::SandboxItemFireWebhookRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'access_token'" do
    it "should work" do
      # instance = Plaid::SandboxItemFireWebhookRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'webhook_type'" do
    it "should work" do
      # instance = Plaid::SandboxItemFireWebhookRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'webhook_code'" do
    it "should work" do
      # instance = Plaid::SandboxItemFireWebhookRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Plaid::SandboxItemFireWebhookRequest::ENUM_VALIDATOR_FOR_WEBHOOK_CODE
      # validator.allowable_values.each do |value|
      #   instance.webhook_code = value.as(String)
      # end
    end
  end
end
