module Api
  module V1
    class StudentsController < ApplicationController
      before_action :set_student, only: [:show, :update, :destroy]

      def index
        @students = Student.all
      end

      def show
      end

      def update
        
      end

      def destroy
        @student.destroy!
        head :no_content
      end


      private

      def set_student
        @student = Student.find(params[:id])
      end
    end
  end
end
