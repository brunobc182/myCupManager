class CreateDeathmatches < ActiveRecord::Migration
  def change
    create_table :deathmatches do |t|
      t.string :name
      t.string :modality
      t.integer :competitors
      t.string :type_competitors

      t.timestamps null: false
    end
  end
end
