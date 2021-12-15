class CreateDemands < ActiveRecord::Migration[6.0]
  def change
    create_table :demands do |t|
      t.references :animal, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
