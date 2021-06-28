class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :uid
      t.string :name
      t.integer :play_list_id
      t.integer :no_of_bots
      t.string :algo

      t.timestamps
    end
    add_index :accounts, :uid
    add_index :accounts, :play_list_id
  end
end
