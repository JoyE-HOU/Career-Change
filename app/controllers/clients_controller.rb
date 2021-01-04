class ClientsController < ApplicationController
    def index
        @clients = Client.all
    end

    def show
        @client = Client.find(params[:id])
    end

    def new
        @client = Client.new
    end

    def create
        @client = Client.create(designer_params)

        redirect_to clients_path
    end

    def client_params
        params.require(:client).permit(:name, :location, :phone_number, :email)
    end
end
