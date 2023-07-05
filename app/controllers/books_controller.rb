class BooksController < ApplicationController

  def index
    @book = Book.new
    @books = Book.all
  end


  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end

  def show
    @showbook = Book.find(params[:id])
  end

  def edit
    @editbook = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:notice] = "Book was successfully destroyed."
    redirect_to "/books"
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
