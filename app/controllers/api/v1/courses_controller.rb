module Api
  module V1
    class CoursesController < ApplicationController
      def index
        @courses = Course.all
      end
    end
  end
end
