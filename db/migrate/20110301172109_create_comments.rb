class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string  :name 
      t.text    :message
      t.integer :post_id
      t.timestamps
    end

    add_index :comments, :post_id
  end

  def self.down
    drop_table :comments
  end
end
