module Api
  module V1
    # controller return books
    class ReturnBooksController < ApplicationController
      # POST create - documentation
      api :POST, '/api/v1/return_books', 'Create new book return'
      param :user_id, String, desc: 'user_id of the user who return books', required: true
      param :book_ids, Array, desc: 'array of book ids to return example: [1,2]', required: true
      # POST create - end of documentation
      def create
        response = Books::Return.call(params: params)

        if response.success?
          render json: response.rent, status: :created
        else
          render json: response.error, status: :unprocessable_entity
        end
      end
    end
  end
end
