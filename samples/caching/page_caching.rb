class PostsController
  caches_page :index

  def index
    @posts = Post.all
  end
end

class PostsController
  ...
  def clear
    expire_page :action => :index
  end
end

Rails.cache.clear
