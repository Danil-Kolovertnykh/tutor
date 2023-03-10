# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController



  def new
    @title_group_all = Group.all
    self.resource = resource_class.new(sign_up_params)
    store_location_for(resource, params[:redirect_to] || request.referer)

    if request.xhr?
      render layout: false
      return
    end

    super
  end




  before_action :configure_sign_up_params, only: [:create]
   before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
   def create
    super

   end

  # GET /resource/edit
   def edit
     @title_group_all = Group.all
     @current_user = current_user
     @group =@current_user.group
     @article = Group.new
     super
   end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params

     devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :surname, :phone, :group_id])

      end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
     devise_parameter_sanitizer.permit(:account_update, keys: [:name, :surname, :phone, :group_id])
  # params.require(:user).permit(:group).to_h["group"].to_i
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
