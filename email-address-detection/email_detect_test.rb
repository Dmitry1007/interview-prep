gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './email_detect'

class EmailDetectTest < Minitest::Test
  def test_it_exists
    assert EmailDetector.new("heyo")
  end

  def test_it_takes_and_stores_a_piece_of_text
    email_detector = EmailDetector.new("Customer Care team is at your service (10:00am to 5:30pm) & will address your concerns immediately. You can also email us at: customerservice@tnmbonline.com
NRI Help Desk:")
    assert_equal "Customer Care team is at your service (10:00am to 5:30pm) & will address your concerns immediately. You can also email us at: customerservice@tnmbonline.com
NRI Help Desk:", email_detector.text[0]
  end

  def test_it_finds_email_address_inside_text
    email_detector = EmailDetector.new("Customer Care team is at your service (10:00am to 5:30pm) & will address your concerns immediately. You can also email us at: customerservice@tnmbonline.com
NRI Help Desk:")
    assert_equal "customerservice@tnmbonline.com", email_detector.find_email
  end
end
