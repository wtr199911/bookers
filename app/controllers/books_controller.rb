class BooksController < ApplicationController
  
  def index
    @newbook = Book.new
    @newbooks = Book.all
  end


  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/show'
  end

  def show
    @showbook = Book.find(params[:id])
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
