require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

	test "unique_tag" do
		quote = Quote.create(:author => 'Seth Allen', :saying => 'You only Yolo once')
		expected = 'SA#' + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual
	end

end
