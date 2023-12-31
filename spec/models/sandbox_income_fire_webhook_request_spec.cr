#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

# Unit tests for Plaid::SandboxIncomeFireWebhookRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/plaid/models/sandbox_income_fire_webhook_request"

describe Plaid::SandboxIncomeFireWebhookRequest do
  describe "test an instance of SandboxIncomeFireWebhookRequest" do
    it "should create an instance of SandboxIncomeFireWebhookRequest" do
      # instance = Plaid::SandboxIncomeFireWebhookRequest.new
      # (instance).should be_a(Plaid::SandboxIncomeFireWebhookRequest)
    end
  end

  describe "test attribute 'client_id'" do
    it "should work" do
      # instance = Plaid::SandboxIncomeFireWebhookRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'secret'" do
    it "should work" do
      # instance = Plaid::SandboxIncomeFireWebhookRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'item_id'" do
    it "should work" do
      # instance = Plaid::SandboxIncomeFireWebhookRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'user_id'" do
    it "should work" do
      # instance = Plaid::SandboxIncomeFireWebhookRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'webhook'" do
    it "should work" do
      # instance = Plaid::SandboxIncomeFireWebhookRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'verification_status'" do
    it "should work" do
      # instance = Plaid::SandboxIncomeFireWebhookRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Plaid::SandboxIncomeFireWebhookRequest::ENUM_VALIDATOR_FOR_VERIFICATION_STATUS
      # validator.allowable_values.each do |value|
      #   instance.verification_status = value.as(String)
      # end
    end
  end

  describe "test attribute 'webhook_code'" do
    it "should work" do
      # instance = Plaid::SandboxIncomeFireWebhookRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
