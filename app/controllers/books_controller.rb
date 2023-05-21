class BooksController < ApplicationController
  def index
    @books_count = Book.all.count
  end
end