class ListController < ApplicationController
  def index
    @books = Book.joins(:tags).joins(:authors).where(:tags => {name: "おすすめ"}).order("authors.name").page(params[:page]).per(6)
  end

  def new
    to = Time.now.at_beginning_of_day  #今日
    from = to - 6.month               #６カ月前
    @books = Book.joins(:authors).where(published_on: from...to).order("authors.name").page(params[:page]).per(6)
  end

  def all
    @books = Book.joins(:authors).order("authors.name").page(params[:page]).per(6)
  end

  def beginner
    @books = Book.joins(:tags).joins(:authors).where(:tags => {name: "beginner"}).order("authors.name").page(params[:page]).per(6)
  end

  def score
    @books = Book.joins(:tags).joins(:authors).where(:tags => {name: "score"}).order("authors.name").page(params[:page]).per(6)
  end

  def kindle
    @books = Book.joins(:tags).joins(:authors).where(:tags => {name: "kindle"}).order("authors.name").page(params[:page]).per(6)
  end

  def kyoukai
    @books = Book.joins(:authors).joins({:authors => :organizations}).where(:organizations => {name: "日本プロ麻雀協会"}).order("authors.name").page(params[:page]).per(6)
  end

  def saikouisen
    @books = Book.joins(:authors).joins({:authors => :organizations}).where(:organizations => {name: "最高位戦日本プロ麻雀協会"}).order("authors.name").page(params[:page]).per(6)
  end

  def myu
    @books = Book.joins(:authors).joins({:authors => :organizations}).where(:organizations => {name: "麻雀連合μ"}).order("authors.name").page(params[:page]).per(6)
  end

  def rmu
    @books = Book.joins(:authors).joins({:authors => :organizations}).where(:organizations => {name: "RMU"}).order("authors.name").page(params[:page]).per(6)
  end

  def renmei
    @books = Book.joins(:authors).joins({:authors => :organizations}).where(:organizations => {name: "日本プロ麻雀連盟"}).order("authors.name").page(params[:page]).per(6)
  end

  def others
    @books = Book.joins(:authors).joins({:authors => :organizations}).where(:organizations => {name: nil}).order("authors.name").page(params[:page]).per(6)
  end

end
