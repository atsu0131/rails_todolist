class Api::BooksController < ApplicationController
    def index
        book = Book.all
        render :json => book
    end
    def show
        @book = Book.find(params[:id])
        render 'show', formats: :json, handlers: 'jbuilder'
    end
end
