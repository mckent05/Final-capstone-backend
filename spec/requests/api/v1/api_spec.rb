require 'swagger_helper'

RSpec.describe 'api/v1/api', type: :request do
  path '/*path' do
    # You'll want to customize the parameter types...
    parameter name: 'path', in: :path, type: :string, description: 'any-path'

    get('error api') do
      response(400, 'Bad Request') do
        let(:path) { '123' }

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

  path '/' do
    get('error api') do
      response(400, 'Bad Request') do
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
