require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup
    @register = CashRegister.new(100)
    @payment = Transaction.new(50)
  end

  def test_accept_money
    @payment.amount_paid = 50

    @register.accept_money(@payment)
    assert_equal(150, @register.total_money)
  end

  def test_change
    @payment.amount_paid = 70
    assert_equal(20, @register.change(@payment))
  end

  def test_giving_receipt
    assert_output("You've paid $50.\n") { @register.give_receipt(@payment) }
  end
end

class TransactionTest < MiniTest::Test
  def setup
    @payment = Transaction.new(30)
  end

  def test_prompt_for_payment
    input = StringIO.new("50\n")
    output = StringIO.new
    @payment.prompt_for_payment(input: input, output:output)
    assert_equal(50, @payment.amount_paid)
  end
end
