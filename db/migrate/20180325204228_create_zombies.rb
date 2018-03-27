class CreateZombies < ActiveRecord::Migration[5.1]
  def change
    create_table :zombies do |t|
      t.string :name
      t.integer :age
      t.text :story
      t.string :email

      t.timestamps
    end
  end
end
