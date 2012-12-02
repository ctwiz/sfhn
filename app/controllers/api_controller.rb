class ApiController < ApplicationController
  def newsletter
    @email = params[:email]
    @status = User.create(:email => @email.to_s)
    respond_to do |format|
      format.json { render :json => @status }
    end 
  end
end
