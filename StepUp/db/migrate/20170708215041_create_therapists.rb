class CreateTherapists < ActiveRecord::Migration[5.1]
  def change
    create_table :therapists do |t|
    	t.integer :pt_db_id
      t.string :status
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
