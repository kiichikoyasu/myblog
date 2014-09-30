# coding: utf-8

class ArticlesController < ApplicationController
  # 記事一覧
  def index
    @articles = Article.order("created_at")
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
  end
  
  # 新規投稿
  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to @article, notice: "投稿が完了しました。"
    else
      render "new"
    end
  end

  def update
  end

  def destroy
  end
end
