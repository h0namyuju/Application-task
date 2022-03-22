class BooksController < ApplicationController
  def top
    @book =Book.top
  end

  def new
   @book =Book.new
  end

   def create
    #  データを受け取り新規登録
    list = Book.new(book_params)
    #  データをデータベースに保存
    list.save
    #  リダイレクト
    redirect_to '/index'
  end

  def index
  end

  def show
  end

  def edit
  end

   # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
