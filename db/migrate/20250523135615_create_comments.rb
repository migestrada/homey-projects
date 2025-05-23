class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.text :commentary

      t.timestamps
    end
  end
end
