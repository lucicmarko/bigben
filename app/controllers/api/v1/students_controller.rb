module Api
  module V1
    class StudentsController < ApplicationController
      def index
        @students = Student.all
      end
    end
  end
end
