class DesignersController < ApplicationController
    def index
        @designers = Designer.all
    end

    def show
        @designer = Designer.find(params[:id])
    end

    def new
        @designer = Designer.new
    end

    def create
        @designer = Designer.create(designer_params)

        redirect_to designers_path
    end

    def designer_params
        params.require(:designer).permit(:name, :yrs_exp, :bio)
    end
end
