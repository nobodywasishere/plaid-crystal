#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

# Unit tests for Plaid::SandboxItemSetVerificationStatusRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/plaid/models/sandbox_item_set_verification_status_request"

describe Plaid::SandboxItemSetVerificationStatusRequest do
  describe "test an instance of SandboxItemSetVerificationStatusRequest" do
    it "should create an instance of SandboxItemSetVerificationStatusRequest" do
      # instance = Plaid::SandboxItemSetVerificationStatusRequest.new
      # (instance).should be_a(Plaid::SandboxItemSetVerificationStatusRequest)
    end
  end

  describe "test attribute 'client_id'" do
    it "should work" do
      # instance = Plaid::SandboxItemSetVerificationStatusRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'secret'" do
    it "should work" do
      # instance = Plaid::SandboxItemSetVerificationStatusRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'access_token'" do
    it "should work" do
      # instance = Plaid::SandboxItemSetVerificationStatusRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'account_id'" do
    it "should work" do
      # instance = Plaid::SandboxItemSetVerificationStatusRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'verification_status'" do
    it "should work" do
      # instance = Plaid::SandboxItemSetVerificationStatusRequest.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Plaid::SandboxItemSetVerificationStatusRequest::ENUM_VALIDATOR_FOR_VERIFICATION_STATUS
      # validator.allowable_values.each do |value|
      #   instance.verification_status = value.as(String)
      # end
    end
  end
end
