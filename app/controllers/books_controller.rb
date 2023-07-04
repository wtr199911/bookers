class BooksController < ApplicationController
  
  def index
    @newbook = Book.new
    @newbooks = Book.all
  end


  def create
    newbook = Book.new(book_params)
    newbook.save
    redirect_to '/books/show'
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
