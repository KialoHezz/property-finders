class PublicController < ApplicationController
  def main
    # redirect user once signed in
    if account_signed_in?
      path = current_account.admin? ? accounts_path: dashboard_path

      redirect_to path and return
    end
    @properties = Property.latest
  end
end
