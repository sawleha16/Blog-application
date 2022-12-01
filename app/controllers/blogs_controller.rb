class BlogsController < ApplicationController
  def index
     @blogs = Blog.all
  end

    def show
      @blog = Blog.find(params[:id])
    end

    def new
      @blog = Blog.new
    end

    def create
       @blog = Blog.new(title: "Hello Winter", body: "I m ready to have all the fun")
       if @blog.save
         redirect_to @blog
       else
         render :new, status: :unprocessable_entity
       end
     end

    def edit
      @blog= Blog.find(params[:id])
    end

    def update
      @blog= Blog.find(params[:id])
      if @blog.update(blog_params)
        redirect_to @blog
      else
        render :edit, status: :unprocessable_entity
      end
    end

     def destroy
       @blog=Blog.find(params[:id])
       redirect_to root_path, status: :see_other
     end
     end
     private
    def blog_params
      params.require(:blog).permit(:title, :body)
    end
