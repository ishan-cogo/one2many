class BookController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        c=Book.all
        render json: c
    end
    
    def add
        c=Book.create(title:params[:title],category:params[:category],publication:params[:publication],published:params[:published],author_id:params[:author_id])
        render html: "book added"
    end
end
