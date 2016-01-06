class HomePageController < ApplicationController
    before_action :require_user, only: [:show, :new, :create, :edit, :update, :destroy]

    def index
    end
end
