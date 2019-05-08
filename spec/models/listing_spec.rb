require 'rails_helper'

RSpec.describe Listing, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :location }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :phone_number }
    it { is_expected.to have_db_column :availability }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :location }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_presence_of :phone_number }
    it { is_expected.to validate_presence_of :availability }
  end

  describe 'Factory' do
    it 'should have a valid Factory' do
      expect(FactoryBot.create(:listing)).to be_valid
    end
  end
end