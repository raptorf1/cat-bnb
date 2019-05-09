require 'rails_helper'

RSpec.describe Offer, type: :model do
  describe 'Associations' do
    it { should belong_to(:listing)}
  end
end
