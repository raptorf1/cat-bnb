require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
  end

  describe 'Factory' do
    it 'should have a valid Factory' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end

  describe 'Association' do
    it { should have_one(:profile) }
  end

end
