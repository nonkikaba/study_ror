class RecordController < ApplicationController
  # 名前なしパラメーター
  def ph1
    @books = Book.where('publish = ? AND price >= ?', params[:publish], params[:price])
    render 'hello/list'
    # ?はプレイスホルダー。プレイスホルダーにセットする値は第２引数で指定。
  end

  # 名前ありパラメーター
  def ph1
    @books = Book.where('publish = :publish AND price >= :price', params[:publish], params[:price])
    render 'hello/list'
  end
end
