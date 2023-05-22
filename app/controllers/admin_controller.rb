class AdminController < ApplicationController
    before_action :can_access?
    # check is admin logged in
    def accounts
        @accounts =Account.where(admin: false)
    end

    def can_access?
      @show_sidebar = true
        unless current_account.admin?
            redirect_to root_url and return
        end
    end
end
