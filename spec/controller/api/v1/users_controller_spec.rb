require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  let(:new_email) { Faker::Internet.email }
  let(:new_username) { Faker::Name.first_name }
  let(:new_email_2) { Faker::Internet.email }
  let(:new_username_2) { Faker::Name.first_name }
  let(:new_email_3) { Faker::Internet.email }
  let(:new_username_3) { Faker::Name.first_name }

  before(:each) do
    @user = FactoryBot.create(:user, username: new_username, email: new_email)
    @user2 = FactoryBot.create(:user, username: new_username_2, email: new_email_2)
  end

  # INDEX
  describe 'GET /users' do
    it 'returns status code 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  # CREATE
  describe 'POST /users' do
    before(:each) do
      post :create, params: {
        username: new_username,
        email: new_email
      }
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # SHOW
  describe 'GET /users' do
    it 'returns status code 200' do
      get :index, params: { id: @user.id }
      expect(response).to have_http_status(200)
    end
  end

  # UPDATE
  describe 'PUT /user/:id' do
      before do
        put :update, params: { id: @user.id, username: new_username_3}
      end

      it 'returns status code 200', :show_in_docs do
        expect(response).to have_http_status(200)
      end

      it 'updates the record' do
        byebug
        expect(JSON.parse(response.body)['username']).to include(new_username_3)
      end
    end
end
