class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :active, default: false
      t.timestamps
    end
  end
end
