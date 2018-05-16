require 'test_helper'

class CardTest < ActiveSupport::TestCase
  
  def setup
    @card = cards(:one)
    @card.face_image = File.new("test/fixtures/sample_file.jpg")
  end
  
  test 'valid card' do
    assert @card.valid?
  end

end