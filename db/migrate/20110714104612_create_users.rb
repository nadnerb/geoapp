class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :street
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :country
      t.timestamps
    end
  end
end
