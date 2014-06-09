class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
    	t.string :weapon_name
    	t.references :zombie
      t.timestamps
    end
  end
end
