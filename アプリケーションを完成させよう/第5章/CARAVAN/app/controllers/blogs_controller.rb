class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
    # 記事を全件取得するよう定義。Viewにインスタンス変数を渡す。
  end

  def show
    @blog = Blog.find(params[:id])
    # ”find"メソッドで探させるインスタンス変数を作成
    # "params"メソッドはIDを受け取っている
  end

  def new
  	@blog = Blog.new
    # インスタンス変数を作成。@付のため、ControllerからViewへの受け渡しが行われる。
  end

  def create
  	blog = Blog.new(blog_params)
    # blogインスタンスで新規投稿(new)が呼び出され、引数でblog_paramsが定義"private"から呼び出される。
  	blog.save
    # DBへ保存される。
  	redirect_to blogs_path(blog.id)
    # リダイレクト先を詳細画面へ移動させる。
  end

  def edit
  end

  # データ送信時の不正な不正なリクエストを防ぐため、"ストロングパラメーター"が使用されている。
  private # ここから下はControllerの中でしか呼び出せなくしている。アクションとして認識されない。
  def blog_params
  	params.require(:blog).permit(:title, :category, :body)
    # requireで定義したオブジェクトを指定。permitでキーを指定している。
  end
end