require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    context 'when user has been created' do
      it 'validate presence of UserName' do
        is_expected.to validate_presence_of(:username)
      end

      it 'validate presence of email' do
        is_expected.to validate_presence_of(:email)
      end

      it 'cannot create two users with the same email' do
        email = Faker::Internet.email
        FactoryBot.create(:user, email: email)
        expect{FactoryBot.create(:user, email: email)}.to raise_error(ActiveRecord::RecordInvalid)
      end
    end
  end
end
