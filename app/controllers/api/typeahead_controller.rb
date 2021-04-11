class Api::TypeaheadController < ApplicationController
  def show
  	users = User.full_text_search(params[:id])
  	render json: users
  end
end
