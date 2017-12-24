module Api
  module V1
    class CoursesController < ApplicationController
      def index
        @courses = Course.all
        render :index, status: :ok
      end
    end
  end
end
