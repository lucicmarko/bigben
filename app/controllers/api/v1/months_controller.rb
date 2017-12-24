module Api
  module V1
    class MonthsController < ApplicationController
      def index
        @months = Month.all
      end
    end
  end
end
