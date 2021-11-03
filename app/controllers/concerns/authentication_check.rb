module AuthenticationCheck
    extend ActiveSupport::Concern
    
    #This is the standard way of creating a method that will be accessible to a variety of controllers
    def is_user_logged_in
      if current_user.nil?
        render json: { message: "No user is authenticated." },
          status: :unauthorized
      end
    end
  end