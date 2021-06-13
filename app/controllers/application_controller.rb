class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_products_path  #Adminのログイン後
    when User
      shares_path         #Userのログイン後
    end
  end

  # def after_sign_out_path_for(resource)
  #   case resource
  #   when Admin
  #     root_path            #Adminのログアウト後
  #   when User
  #     root_path            #Userのログアウト後
  #   end
  # end

end
