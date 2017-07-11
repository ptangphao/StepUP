class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :zip_code
      t.integer :age
      t.string :sex
      t.string :language
      t.references :organization
      t.string :notes
      t.string :location

      t.timestamps
    end
  end
end
