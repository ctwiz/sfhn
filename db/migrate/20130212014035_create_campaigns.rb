class CreateCampaigns < ActiveRecord::Migration
  def up
    create_table :campaigns do |t|
      t.string :title
      t.string :body
      t.timestamps
    end
  end

  def down

  end
end
