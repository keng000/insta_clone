class InstController < ApplicationController
  #before_action :authenticate_user!
  def index
    @post = PostAdmin.all
  end

  def new
    @post = PostAdmin.new
  end

  def create
    @post = PostAdmin.new(post_params)
    #@post.user_id = current_user.id
    if @post.save
      #NoticeMailer.sendmail_inst(@post).deliver
      redirect_to inst_index_path, notice:"投稿しました"
    else
      render action: 'new'
    end
  end

  def edit
    @post = PostAdmin.find(params[:id])
  end

  def update
    @post = PostAdmin.find(params[:id])
    if @post.update(post_params)
      redirect_to inst_index_path, notice: 'ブログを編集しました'
    else
      render action: 'edit'
    end
  end

  def destroy
    @post = PostAdmin.find(params[:id])
    @post.destroy
    redirect_to inst_index_path, notice:'削除しました'
  end

  private
    def post_params
      params.require(:post_admin).permit(:image_url, :image_url_cache)
    end

end
