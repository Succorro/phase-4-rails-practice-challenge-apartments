class ApplicationController < ActionController::API
    rescue_from  ::ActiveRecord::RecordNotFound do |exception| 
        render json: {error: "#{exception.message}"}, status: :not_found
    end

    rescue_from ::ActiveRecord::RecordInvalid do |exception| 
        render json: {errors: "#{exception.message}"}, status: :unprocessable_entity
    end 

end
