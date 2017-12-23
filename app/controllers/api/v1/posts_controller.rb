module Api
  module V1
    class PostsController < ApplicationController
      def index
        #render json: {body: 'working'}, status: :ok
        post = Struct.new(:id, :body)
        @p = post.new(1, 'text')
      end
    end
  end
end
