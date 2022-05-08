class MembersController < ApplicationController
    before_action :authenticate_user!
  
    def show
        puts current_user.id
        render json: { message: "If you see this, you're in!" }
    end
end