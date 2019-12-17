class BooksController < ApplicationController
    def new
        @author = Author.find(params[:author_id])
        @book = Book.new
      end
      def create
        puts params
        author = Author.find(params[:book][:author_id])
        Book.create(params.require(:book).permit(:title, :genre, :publish_date, :author_id))
               
        redirect_to author
      end
end
