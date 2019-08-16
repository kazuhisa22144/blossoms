class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.references :blossom
      t.string :blossom_language
      t.timestamps
    end
    add_column :blossoms, :season, :integer
    add_column :blossoms, :position, :integer
  end
end
