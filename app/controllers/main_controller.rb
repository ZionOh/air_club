class MainController < ApplicationController
    def contacts
        @users = User.all
    end

end
