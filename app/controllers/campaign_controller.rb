class CampaignController < ApplicationController
  def index
    render :layout => false 
  end
  def hackers
    render :layout => false
  end
  def movie2poll
    render :layout => false
  end
  def movie2
    render :layout => false
  end
  def sfhn2
    render :layout => false
  end
  def meeting2
    render :layout => false
  end

  def show
    @campaign_id = params[:id]
    @campaign = Campaign.find(@campaign_id)
    render :layout => "campaign"
  end

  def new
    @campaign = Campaign.new
    render :layout => false
  end

  def create
    @campaign = Campaign.create(params[:campaign]) 
    if @campaign.save
      redirect_to @campaign, :notice => 'Campaign was successfully saved.'
    end
  end

  def edit
    @campaign_id = params[:id]
    @campaign = Campaign.find(@campaign_id)
    render :layout => false
  end

  def update
    @campaign = Campaign.find(params[:id])
    if @campaign.update_attributes(params[:campaign])
      redirect_to @campaign, :notice => 'Campaign was successfully updated.'
    end
  end

end
