class DailyJobsController < ApplicationController
    def index
        @brothers = Brother.all
        @chores = Chore.all
    end

    def show
        @chore = Chore.find(params[:id])
    end
end
