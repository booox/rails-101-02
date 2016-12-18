class GroupsController < ApplicationController
    def index
        @groups = Group.all
    end

    # new
    def new
        @group = Group.new
    end
    
    # show
    def show
        @group = Group.find(params[:id])
    end

    # edit 
    def edit
        @group = Group.find(params[:id])
    end

    # create 
    def create
        @group = Group.new(group_parmas)
        @group.save

        redirect_to groups_path
    end

    private

    def group_parmas
        params.require(:group).permit(:title, :description)
    end
end
