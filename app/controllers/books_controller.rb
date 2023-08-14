class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      flash.now[:alert]
      render :new
  end

  def index
  end

  def show
  end

  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  
  private
  
  def book_params
    params.repuire(:list).permit(:title, :body)
  end
  
end
