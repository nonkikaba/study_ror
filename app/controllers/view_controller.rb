class ViewController < ApplicationController

  def form_for
    @book = Book.new
  end

  def field
    @book = Book.new
  end

  def select
    @book = Book.new(publish: "技術評論社")
  end

  def col_select
    @book = Book.new(publish: '技術評論社')

    @books = Book.select(:publish).distinct
  end
end
