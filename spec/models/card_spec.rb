
require 'rails_helper'

RSpec.describe Card, type: :model do
  
  let(:card) { create(:card) }

  it "should be valid with valid attributes" do
    expect(card).to be_valid
  end
  
end