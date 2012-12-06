class AddFieldsToUsers < ActiveRecord::Migration
  def change
    # Attendee #,Date,Last Name,First Name,Email,QTY,Ticket Type,Date Attending,Order #
    add_column :users, :signup_date, :date
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :quantity, :integer
  end
end
