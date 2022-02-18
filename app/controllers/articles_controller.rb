class ArticlesController < ApplicationController
  def index
    #busca todas os dados articles no bano an variavel usa @
    @articles = Article.all  #fica publica na minha view
  end
  def show
    @articles = Article.find(params[:id]) # find busca um parametro e passo o id
  end
end

