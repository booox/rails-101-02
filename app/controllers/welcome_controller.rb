class WelcomeController < ApplicationController
    def index
        flash[:notice] = "早安!你好! "
        flash[:alert] = "太晚了!早点睡吧! "
        flash[:warning] = "It's warning! "
    end
end
