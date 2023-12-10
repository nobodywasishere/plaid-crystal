#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

# Unit tests for Plaid::StudentLoanStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/plaid/models/student_loan_status"

describe Plaid::StudentLoanStatus do
  describe "test an instance of StudentLoanStatus" do
    it "should create an instance of StudentLoanStatus" do
      # instance = Plaid::StudentLoanStatus.new
      # (instance).should be_a(Plaid::StudentLoanStatus)
    end
  end

  describe "test attribute 'end_date'" do
    it "should work" do
      # instance = Plaid::StudentLoanStatus.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute '_type'" do
    it "should work" do
      # instance = Plaid::StudentLoanStatus.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
      # validator = Plaid::StudentLoanStatus::ENUM_VALIDATOR_FOR__TYPE
      # validator.allowable_values.each do |value|
      #   instance._type = value.as(String)
      # end
    end
  end
end