class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json
  
  private  
  
  def respond_with(resource, _opts = {})
    resource.persisted? ? register_success : register_failed
  end  
  
  def register_success
    render json: { message: 'Signed up.', status: 200 }
  end  
  
  def register_failed
    render json: { message: "Signed up failure." status: 400}
  end
end
