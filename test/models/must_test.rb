require "test_helper"

class MustTest < ActiveSupport::TestCase
  
  def test_price_per_liter
    must = Must.new(price: 10, volume: 10)
    assert_equal(100, must.price_per_liter)

    must = Must.new(price: 13, volume: 33)
    assert_in_delta(39.39, must.price_per_liter, 0.0x1)
  end

end
