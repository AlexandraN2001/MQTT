require 'grape'
require 'grape-swagger'

class API < Grape::API
  # Set the response format to JSON
  format :json
  # Define the API prefix
  prefix :api

  # Define the MQTT resource
  resource :mqtt do
    desc 'Publish a message to MQTT'  # Description for the endpoint
    params do
      requires :message, type: String, desc: 'Message to send'  # Parameters required
    end

    # Define the POST request to publish a message
    post :publish do
      { status: 'Message published', message: params[:message] }
    end
  end

  # Enable Swagger documentation for API exploration
  add_swagger_documentation
end
