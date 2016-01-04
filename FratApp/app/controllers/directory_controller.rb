class DirectoryController < ApplicationController
    def index
        @brothers = Brother.all
    end

    def new
        @brother = Brother.new
    end

    def create
        @brother = Brother.new(brother_params)
        if @brother.save
            redirect_to brothers_path
        else
            render 'new'
        end
    end

    private
    def brother_params
        params.require(:brother).permit(:name, :initials, :pledge_class, :major, :grad_year, :phone)
    end
end
