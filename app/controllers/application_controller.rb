class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # deviseではサインアップ時にメールアドレスとパスワードのみを受け取るようにストロングパラメーターで設定してあるのでキーを追加しても許可されません。
  # そこで登場するのがconfigure_permitted_parametersメソッド,deviseで利用出来るパラメーターを設定しますよ。という意味。
  before_action :configure_permitted_parameters, if: :devise_controller?
  


  def after_sign_in_path_for(resource)
     root_path
  end




  # ストロングパラメーター：アサインメント脆弱性のため

  protected
  # 以下のパラメーターを追加します
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :last_name_kana, :first_name, :first_name_kana, :zip, :address, :tell, :id])
  end
end
