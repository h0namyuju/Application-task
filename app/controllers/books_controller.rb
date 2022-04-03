class BooksController < ApplicationController
  def top
    @book =Book.top
  end

  def new
   @book = Book.new
  end

  def create
    #  データを受け取り新規登録
    @book = Book.new(book_params)
    #  データをデータベースに保存
    if @book.save
       flash[:success] = "Book was successfully created."
    #  リダイレクト
    redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
    end
  end


  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    flash[:success] = "Book was successfully destroyed."
    redirect_to '/books'

  end
   # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end