# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'GET /v1/course/:id', type: :request do

  let!(:course) { FactoryBot.create(:course) }

  before do
     get "/v1/courses/#{course.id}", headers: { 'Accept': 'application/json' } 
  end

  context 'when course exist' do   
    context 'with valid token' do 
      it 'returns HTTP status 200' do
        expect(response).to have_http_status 200
      end

      it 'returns course data' do
        body = JSON.parse(response.body)
        expect(body.size).to be(1)
        expect(body.dig("data", "name")).not_to be_empty
      end
    end

    # context 'without valid token' do
    #   it 'returns HTTP status 401' do
    #     expect(response).to have_http_status 401
    #   end
    # end
  end
end
