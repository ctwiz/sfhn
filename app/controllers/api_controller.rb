class ApiController < ApplicationController
  def newsletter
    @email = params[:email]
    @status = User.create(:email => @email.to_s)
    respond_to do |format|
      format.json { render :json => @status }
    end 
  end

  def add_to_newsletter
    @lines = params[:lines]
    # split on newline
    @lines = @lines.split("\n")
    @lines.each do |line|
      # split on comma 
      line = line.split(",")
      signup_date = (line[0] + ","+line[1]).gsub(/\"/, '')
      last_name = line[2]
      first_name = line[3]
      email = line[4]
      quantity = line[5]

      User.create(:email => email, :signup_date => signup_date, :last_name => last_name, :first_name => first_name, :email => email, :quantity => quantity)
    end
    render :nothing => true
  end
end
