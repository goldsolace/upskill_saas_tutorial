class Users::RegistrationsController < Devise::RegistrationsController
  # Extend default devise gem behavior so that
  # users signing up with pro (plan ID 2)
  # save with a special stripe sub function
  # otherwise Devise signs up use as usual
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 2
          resource.save_with_payment
        else
          resource.save
        end
      end
    end
  end
end