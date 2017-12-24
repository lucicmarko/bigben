# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'GET /v1/courses', type: :request do

  let!(:courses) { FactoryBot.create_list(:course, 10) }

  before { get '/v1/courses', headers: { 'Accept': 'application/vnd' } }

  context 'when courses exist' do
    it 'returns HTTP status 200' do
      expect(response).to have_http_status 200
    end

    it 'returns all courses' do
      body = JSON.parse(response.body)
      expect(body.size).to eq(10)
    end
  end
end
