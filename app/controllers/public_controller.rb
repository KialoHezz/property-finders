class PublicController < ApplicationController
  def main
    # redirect user once signed in
    if account_signed_in?
      redirect_to dashboard_path and return
    end
    @properties = Property.latest
  end
end
