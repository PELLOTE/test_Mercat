require 'rails_helper'

RSpec.describe Api::V1::BooksController, type: :controller do
  let(:new_name) { Faker::Name.first_name }
  let(:new_name2) { Faker::Name.first_name }

  before(:each) do
    @book = FactoryBot.create(:book, name: new_name)
    @book2 = FactoryBot.create(:book, name: new_name2)
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
        name: new_name
      }
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # SHOW
  describe 'GET /users' do
    it 'returns status code 200' do
      get :index, params: { id: @book.id }
      expect(response).to have_http_status(200)
    end
  end
end
