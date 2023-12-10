#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

# Unit tests for Plaid::SignalEvaluateCoreAttributes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
require "../spec_helper"
require "../../src/plaid/models/signal_evaluate_core_attributes"

describe Plaid::SignalEvaluateCoreAttributes do
  describe "test an instance of SignalEvaluateCoreAttributes" do
    it "should create an instance of SignalEvaluateCoreAttributes" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # (instance).should be_a(Plaid::SignalEvaluateCoreAttributes)
    end
  end

  describe "test attribute 'unauthorized_transactions_count_7d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'unauthorized_transactions_count_30d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'unauthorized_transactions_count_60d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'unauthorized_transactions_count_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'nsf_overdraft_transactions_count_7d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'nsf_overdraft_transactions_count_30d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'nsf_overdraft_transactions_count_60d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'nsf_overdraft_transactions_count_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'days_since_first_plaid_connection'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'plaid_connections_count_7d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'plaid_connections_count_30d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'total_plaid_connections_count'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'is_savings_or_money_market_account'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'total_credit_transactions_amount_10d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'total_debit_transactions_amount_10d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p50_credit_transactions_amount_28d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p50_debit_transactions_amount_28d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p95_credit_transactions_amount_28d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p95_debit_transactions_amount_28d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'days_with_negative_balance_count_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p90_eod_balance_30d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p90_eod_balance_60d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p90_eod_balance_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p10_eod_balance_30d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p10_eod_balance_60d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p10_eod_balance_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'available_balance'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'current_balance'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'balance_last_updated'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'phone_change_count_28d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'phone_change_count_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'email_change_count_28d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'email_change_count_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'address_change_count_28d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'address_change_count_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'plaid_non_oauth_authentication_attempts_count_3d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'plaid_non_oauth_authentication_attempts_count_7d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'plaid_non_oauth_authentication_attempts_count_30d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'failed_plaid_non_oauth_authentication_attempts_count_3d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'failed_plaid_non_oauth_authentication_attempts_count_7d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'failed_plaid_non_oauth_authentication_attempts_count_30d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'debit_transactions_count_10d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'credit_transactions_count_10d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'debit_transactions_count_30d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'credit_transactions_count_30d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'debit_transactions_count_60d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'credit_transactions_count_60d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'debit_transactions_count_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'credit_transactions_count_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'total_debit_transactions_amount_30d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'total_credit_transactions_amount_30d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'total_debit_transactions_amount_60d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'total_credit_transactions_amount_60d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'total_debit_transactions_amount_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'total_credit_transactions_amount_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p50_eod_balance_30d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p50_eod_balance_60d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p50_eod_balance_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p50_eod_balance_31d_to_60d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p50_eod_balance_61d_to_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p90_eod_balance_31d_to_60d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p90_eod_balance_61d_to_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p10_eod_balance_31d_to_60d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'p10_eod_balance_61d_to_90d'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end

  describe "test attribute 'transactions_last_updated'" do
    it "should work" do
      # instance = Plaid::SignalEvaluateCoreAttributes.new
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
