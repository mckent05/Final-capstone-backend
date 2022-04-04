require 'swagger_helper'

RSpec.describe 'api/v1/items', type: :request do
  path '/api/v1/items' do
    get('list items') do
      tags 'Items'
      response(200, 'successful') do
      
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        
        run_test!
      end
    end

    post('create item') do
      tags 'Items'
      response(200, 'successful') do
      parameter name: 'name'       , in: :path, type: :string, description: 'name'
      parameter name: 'description', in: :path, type: :string, description: 'description'
      parameter name: 'image'      , in: :path, type: :string, description: 'image url'
      parameter name: 'price'      , in: :path, type: :string, description: 'price'
      parameter name: 'city'       , in: :path, type: :string, description: 'city'
      parameter name: 'capacity'   , in: :path, type: :string, description: 'capacity'

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/items/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show item') do
      tags 'Items'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete item') do
      tags 'Items'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
