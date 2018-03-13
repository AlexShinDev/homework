require 'minitest/autorun'
require_relative 'banking'

class BankingTest < MiniTest::Unit::TestCase
  def test_bank_balance
    account = BankAccount.new(3)
    assert_equal 3, account.balance
  end

  def test_zero_balance
    assert_equal 0, BankAccount.new.balance
  end

  def test_check_balance
    account = BankAccount.new(3)
    assert_equal "Your balance is $3", account.check_balance
  end

  def test_check_balance_zero
    account = BankAccount.new
    assert_equal "Your balance is $0", account.check_balance
  end

  def test_deposit
    account = BankAccount.new(3)
    account.deposit(2)
    assert_equal 5, account.balance
  end

  def test_deposit_zero
    account = BankAccount.new
    account.deposit(2)
    assert_equal 2, account.balance
  end

  def test_withdraw_positive_account
    account = BankAccount.new(5)
    account.withdraw(2)
    assert_equal 3, account.balance
  end

  def test_withdraw_negative_account
    account = BankAccount.new(5)
    account.withdraw(6)
    assert_equal 5, account.balance
  end

  def test_withdraw_zero_account
    account = BankAccount.new(4)
    account.withdraw(4)
    assert_equal 4, account.balance
  end

  def test_trasfer_to
    bank1 = BankAccount.new(5)
    bank2 = BankAccount.new

    bank1.transfer_to(bank2, 2)
    assert_equal 2, bank2.balance
  end
end