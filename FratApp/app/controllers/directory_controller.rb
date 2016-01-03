class DirectoryController < ApplicationController
    def index
        @brothers = Brother.all
    end
end
