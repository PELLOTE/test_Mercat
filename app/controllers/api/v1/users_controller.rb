module Api
  module V1
    # Group Controller
    class UsersController < ApplicationController
      before_action :set_user, only: %i[show update destroy]
      before_action :set_users, only: %i[index]

      # GET index - documentation
      api :GET, '/api/v1/users', 'List all users'
      # GET index - end of documentation
      def index
        render ActiveModelSerializers::SerializableResource.new(@users,
                                                                each_serializer: UserSerializer
                                                               ).to_json, status: 200
      end

      # GET show - documentation
      api :GET, '/api/v1/users/:id', 'Get a user by id'
      param :id, Integer, desc: 'id of user', required: true
      # GET show - end of documentation
      def show
        render json: @user, serializer: UserSerializer, status: 200
      end


      # POST create - documentation
      api :POST, '/api/v1/users', 'Create user'
      param :username, String, desc: 'username for user', required: true
      param :email, String, desc: 'email for user', required: true
      # POST create - end of documentation
      def create
        user = User.create(user_params)
        render json: user, message: 'user succefully create', status: 200
      end

      # PUT update - documentation
      api :PUT, '/api/v1/users/:id', 'Update user'
      param :id, String, desc: 'users id to update', required: true
      param :username, String, desc: 'username for user', required: true
      param :email, String, desc: 'email for user', required: true
      # PUT update - end of documentation
      def update
        if @user
          @user.update(user_params)
          render json: @user, serializer: UserSerializer, message: 'user succefully update', status: 200
        else
          render json: { error: 'unable update' }, status: 400
        end
      end

      # DELETE update - documentation
      api :DELETE, '/api/v1/users/:id', 'Destroy Users'
      param :id, String, desc: 'Users ID to delete'
      # DELETE update - end of documentation
      def destroy
        if @user
          @user.destroy
          render json: { message: 'user succefully destroy' }, status: 200
        else
          render json: { error: 'unable destroy' }, status: 400
        end
      end

      private

      def user_params
        params.permit(:username, :email)
      end

      def set_users
        @users = User.all
      end

      def set_user
        @user = User.find_by(id: params[:id])
      end
    end
  end
end
