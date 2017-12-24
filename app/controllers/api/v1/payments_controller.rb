module Api
  module V1
    class PaymentsController < ApplicationController
      def index
        @payments = Payment.all
      end
    end
  end
end
