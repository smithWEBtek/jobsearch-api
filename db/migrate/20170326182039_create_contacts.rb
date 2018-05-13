class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.integer :company_id, default: 1
      t.string :fname
      t.string :lname
      t.string :title, default: 'unspecified'
      t.string :email, default: 'unspecified'
      t.string :phone, default: 'unspecified'
			t.string :url, default: 'unspecified'
			t.string :linkedin, default: 'unspecified'
			t.string :twitter, default: 'unspecified'
      t.text :about, default: 'unspecified'

      t.timestamps
    end
  end
end
