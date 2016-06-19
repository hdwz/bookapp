class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :profession
      t.text :about
      t.text :publications
      t.text :awards
      t.string :picture

      t.timestamps
    end
  end
end
