class BooksController < ApplicationController
  def new

  end

  def index
    @books = Book.all
  end

  def edit
     @book = Book.find(params[:id])
  end

  def show
     @book = Book.find(params[:id])
  end

  def create
    book = Book.new(book_params)
    if book.save
      flash[:notice] = "Succesfully 新規追加に成功しました"
    else
      flash.now[:notice] = "新規追加に失敗しました"
    end
    redirect_to "/books/#{book.id}"

  end

  def update
    book = Book.find(params[:id])
    if book.update(book_params)
      flash[:notice] = "Succesfully 更新に成功しました"
    else
      flash.now[:noticer] = "更新に失敗しました"
    end
    redirect_to "/books/#{book.id}"
  end

  def destroy
    book = Book.find(params[:id])
    if book.destroy
       flash[:notice] = "Succesfully 削除に成功しました"
    else
      flash.now[:notice] = "更新に失敗しました"
    end
    redirect_to "/books"
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
