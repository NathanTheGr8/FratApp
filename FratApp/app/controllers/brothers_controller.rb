class BrothersController < ApplicationController
    before_action :require_user, only: [:index, :show, :new, :create, :edit, :update, :destroy]

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

    def show
        @brother = Brother.find(params[:id])
    end

    def edit
        @brother = Brother.find(params[:id])
    end

    def update
      @brother = Brother.find(params[:id])
      if @brother.update_attributes(brother_params)
        redirect_to :brothers
      else
        render 'edit'
      end
    end

    def destroy
        @brother = Brother.find(params[:id])
        @brother.destroy
        redirect_to :brothers
    end

    private
    def brother_params
        params.require(:brother).permit(:name, :initials, :pledge_class, :major, :grad_year, :phone)
    end
end
