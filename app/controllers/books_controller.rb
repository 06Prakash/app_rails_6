class BooksController < ApplicationController
  before_action :set_book, only: %i[show update edit destroy]

  def show; end

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = 'Book details got added to database!!'
      redirect_to @book
    else
      render 'new'
    end
  end

  def update
    if @book.update(book_params)
      flash[:notice] = 'Book Details got updated successfully!!'
      redirect_to @book
    else
      render 'edit'
    end
  end

  def edit; end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :description)
  end
end
