require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  test "unique_tag"  do
    quote = Quote.create(:author => 'Professor Robbie', :saying => 'Some adjuncts have more degrees than fahrenheit.')
    expected = 'PR#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end

end
