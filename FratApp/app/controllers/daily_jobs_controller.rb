class DailyJobsController < ApplicationController
    def index
        @brothers = Brother.all
        @chores = Chore.all
    end
end
