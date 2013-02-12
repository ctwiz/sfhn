class ChangeBodyTypeOnCampaign < ActiveRecord::Migration
  def up
    change_column :campaigns, :body, :text
  end

  def down
  end
end
