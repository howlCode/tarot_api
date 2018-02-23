require 'rails_helper'

RSpec.describe Card, type: :model do
  before(:all) do
    @card1 = create(:card)
  end
  it 'has a valid factory' do
    expect(@card1).to be_valid
  end

  describe Card do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:short_meaning) }
    it { is_expected.to validate_presence_of(:full_meaning) }
    it { is_expected.to validate_presence_of(:up) }
    it { is_expected.to validate_presence_of(:reverse) }
    it { is_expected.to validate_presence_of(:face_image) }
  end

end
