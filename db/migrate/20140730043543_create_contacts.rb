class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :type, index: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :primary_number
      t.string :secondary_number
      t.string :street_address1
      t.string :street_address2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :birth_date
      t.string :height
      t.decimal :weight

      t.timestamps
    end
  end
end
