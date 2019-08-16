class CreateBlossomLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :blossom_languages do |t|
      t.references :blossom, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
