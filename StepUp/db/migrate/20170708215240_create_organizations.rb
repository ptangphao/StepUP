class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :contact
      t.string :phone
      t.string :email
      t.text   :notes
      t.string :username
      t.string :password_digest
      t.string :image_url
      t.string :location

      t.timestamps
    end
  end
end
