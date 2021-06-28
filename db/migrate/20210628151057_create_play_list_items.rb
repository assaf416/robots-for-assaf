class CreatePlayListItems < ActiveRecord::Migration[6.1]
  def change
    create_table :play_list_items do |t|
      t.string :pair
      t.text :params
      t.integer :play_list_id

      t.timestamps
    end
    add_index :play_list_items, :pair
    add_index :play_list_items, :play_list_id
  end
end
