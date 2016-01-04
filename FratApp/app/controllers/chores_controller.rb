class ChoresController < ApplicationController
    def index
        @chores = Chore.all
        @brothers = Brother.all
    end

    def new
        @chore = Chore.new
    end

    def create
        @chore = Chore.new(chore_params)
        if @chore.save
            redirect_to chores_path
        else
            render 'new'
        end
    end

    def show
        @chore = Chore.find(params[:id])
    end

    def edit
        @chore = Chore.find(params[:id])
    end

    def update
      @chore = Chore.find(params[:id])
      if @chore.update_attributes(chore_params)
        redirect_to :chores
      else
        render 'edit'
      end
    end

    def destroy
        @chore = Chore.find(params[:id])
        @chore.destroy
        redirect_to :chores
    end

    private
    def chore_params
        params.require(:chore).permit(:name, :description)
    end
end
