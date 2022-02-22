class ArticlesController < ApplicationController
  def index
    #busca todas os dados articles no bano an variavel usa @
    @articles = Article.all  #fica publica na minha view
  end
  #busca pelo id
  def show
    # find busca um parametro e passo o id
    @articles = Article.find(params[:id])
  end

  # novo 
  def new
    @articles = Article.new
  end

  #cria
  def create
    @articles = Article.new(article_params)
    #se consegui salva
    if @articles.save
      redirect_to @articles
    else
      render :new
    end
  end

  def edit
    @articles = Article.find(params[:id])
  end

  def update
    @articles = Article.find(params[:id])
          #  saolva
    if @articles.update(article_params)
      redirect_to @articles
    else
      render :edit
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end

end

