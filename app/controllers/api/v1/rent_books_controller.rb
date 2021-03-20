module Api
  module V1
    # controller rents books
    class RentBooksController < ApplicationController
      # POST create - documentation
      api :POST, '/api/v1/rent_books', 'Create new rents'
      param :user_id, String, desc: 'user_id of the user who rents books', required: true
      param :book_ids, Array, desc: 'array of book ids to reserve example: [1,2]', required: true
      # POST create - end of documentation
      def create
        response = Books::Rent.call(params: params)

        if response.success?
          render json: response.rent, status: :created
        else
          render json: response.error, status: :unprocessable_entity
        end
      end
    end
  end
end
