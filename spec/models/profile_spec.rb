require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :location }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :picture }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :location }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :picture }
  end

  describe 'Factory' do
    it 'should have a valid Factory' do
      expect(FactoryBot.create(:profile)).to be_valid
    end
  end

  describe 'Association' do
    it { is_expected.to belong_to(:user) }
  end

  describe "Authorization" do
    
  end

end
