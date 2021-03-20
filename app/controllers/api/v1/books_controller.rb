module Api
  module V1
    class BooksController < ApplicationController
      before_action :set_book, only: %i[show update destroy]
      before_action :set_books, only: %i[index]
      # GET index - documentation
      api :GET, '/api/v1/books', 'List all books'
      # GET index - end of documentation
      def index
        render json: @books, status: 200
      end

      # GET show - documentation
      api :GET, '/api/v1/books/:id', 'Get a book by id'
      param :id, Integer, desc: 'id of book', required: true
      # GET show - end of documentation
      def show
        render json: @book
      end

      # POST create - documentation
      api :POST, '/api/v1/books', 'Create Book'
      param :name, String, desc: 'name for book', required: true
      # POST create - end of documentation
      def create
        user = Book.create(book_params)
        render jsom: user
      end

      # PUT update - documentation
      api :PUT, '/api/v1/books/:id', 'Update user'
      param :id, String, desc: 'Book id to update', required: true
      param :name, String, desc: 'name for book', required: true
      # PUT update - end of documentation
      def update
        if @book
          @book.update(book_params)
          render json: { message: 'Book succefully update' }, status: 200
        else
          render json: { error: 'unable update' }, status: 400
        end
      end

      # DELETE update - documentation
      api :DELETE, '/api/v1/books/:id', 'Destroy Users'
      param :id, String, desc: 'Book ID to delete'
      # DELETE update - end of documentation
      def destroy
        if @book
          @book.destroy
          render json: { message: 'book succefully destroy' }, status: 200
        else
          render json: { error: 'unable destroy' }, status: 400
        end
      end

      private

      def book_params
        params.permit(:name)
      end

      def set_books
        @books = Book.all
      end

      def set_book
        @book = Book.find_by(id: params[:id])
      end
    end
  end
end
