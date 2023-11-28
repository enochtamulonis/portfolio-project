class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :email
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
