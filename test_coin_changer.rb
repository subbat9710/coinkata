require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test

	def test_pass_zero_cents_returns_empty_hash
		result = get_change(0)
		assert_equal({}, result)
	end
	def test_pass_one_cents_returns_one_penny_hash
		result = get_change(1)
		assert_equal({:penny => 1}, result)
	end
	def test_pass_two_cents_returns_two_pennies_hash
		result = get_change(2)
		assert_equal({:penny => 2}, result)
	end
	def test_pass_5_cents_returns_one_nickel_hash
		result = get_change(5)
		assert_equal({:nickel => 1}, result)
	end
	def test_pass_six_cents_returns_one_nickel_one_penne_hash
		result = get_change(6)
		assert_equal({:nickel => 1, :penny => 1}, result)
	end
	def test_pass_seven_cents_returns_one_nickel_two_penny_hash
		result = get_change(7)
		assert_equal({:nickel => 1, :penny => 2}, result)
	end
	def test_pass_ten_cents_returns_one_dime_hash
		result = get_change(10)
		assert_equal({:dime => 1}, result)
	end
	def test_pass_eleven_cents_returns_one_dime_one_penny_hash
		result = get_change(11)
		assert_equal({:dime => 1, :penny => 1}, result)
	end
	def test_pass_twenty_cents_returns_two_dimes_hash
		result = get_change(20)
		assert_equal({:dime => 2}, result)
	end
	def test_pass_twentyfive_cents_returns_one_quarter_hash
		result = get_change(25)
		assert_equal({:quarter => 1}, result)
	end
	def test_pass_fifty_cents_returns_two_quarters_hash
		result = get_change(50)
		assert_equal({:quarter => 2}, result)
	end
	def test_pass_ninetythree_cents_returns_three_quarters_one_dime_one_nickel_three_penny_hash
		result = get_change(93)
		assert_equal({:quarter => 3, :dime => 1, :nickel => 1, :penny => 3}, result)
	end
end