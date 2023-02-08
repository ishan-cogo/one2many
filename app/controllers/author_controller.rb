class AuthorController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        c=Author.all
        render json: c
    end
    
    def add
        c=Author.create(name:params[:name],email:params[:email],dob:params[:dob],phone:params[:phone])
        render html: "user added"
    end    

    def getbooks
        c=Author.where(name: params[:name])
        id=c[0].id
        d=Book.where(author_id: id)
        render json: d
    end    
end
