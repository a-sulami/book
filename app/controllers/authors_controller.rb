class AuthorsController < ApplicationController
    def index
        @authors = Author.all 
    end
    def show
        @author = Author.find(params[:id])
        @books = @author.books
      end

      def new
        @author = Author.new
      end

      def create
        Author.create(params.require(:author).permit(:name, :bith_date, :country, :bith_place))
        redirect_to authors_path
      end

      def edit
        @author = Author.find(params[:id])
      end

      def update
        author = Author.find(params[:id])
        author.update(params.require(:author).permit(:name, :bith_date, :country, :bith_place))
          
        redirect_to author
      end

      def destroy
        Author.find(params[:id]).destroy
      
        redirect_to authors_path
      end
    
end
