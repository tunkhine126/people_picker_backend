class PeopleController < ApplicationController

    def index 
        @peoples = People.all
        render json: @peoples
      end
    
      def create
        @people = People.create(people_params)
        render json: { people: People.create(@people) }, status: :created
      end
    
      def show
        render json: People.find(params[:id])
      end
    
      private
      def people_params
        params.require(:people).permit(:name, :email)
      end
    
    end

end
