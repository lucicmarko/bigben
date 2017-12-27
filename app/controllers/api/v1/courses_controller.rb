module Api
  module V1
    class CoursesController < ApplicationController
      before_action :set_course, only: [:show, :update, :destroy]

      def index
        @courses = Course.all
        render :index, status: :ok
      end

      def show
      end

      def create
        @course = Course.new(course_params)
        if @course.save
          render :show, status: :created
        else
          render partial: 'api/v1/errors',
                 locals: { errors: @course.errors },
                 status: :unprocessable_entity
        end
      end

      def update
        if @course.update(course_params)
          render :show, status: :ok
        else
          render partial: 'api/v1/errors',
                 locals: { errors: @course.errors },
                 status: :unprocessable_entity
        end
      end

      def destroy
        byebug
        @course.destroy!
        head :no_content
      end

      private

      def set_course
        @course = Course.find(params[:id])
      end

      def course_params
        params.require(:course).permit(:name, :description, :price, :img_url)
      end
    end
  end
end
