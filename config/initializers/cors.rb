# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

# THis allows your server to accept REST requests from any origin. This is not a good general practice 
# — you would want to specify the address of your front end application instead of * 
# — but CORS is outside the scope of this lesson.
# Using origins '*' is for our convenience. When deploying to production, set origins to the URL of your frontend app. 
# Otherwise the whole internet will be able to hit your API. 
# Though in some cases that’s desirable.
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
