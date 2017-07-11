class CreateBlacklists < ActiveRecord::Migration[5.1]
  def change
    create_table :blacklists do |t|
    	t.references :therapist

      t.timestamps
    end
  end
end
