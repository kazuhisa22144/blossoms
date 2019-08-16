class CreateBlossoms < ActiveRecord::Migration[5.2]
  def change
    create_table :blossoms do |t|
      t.string :hiragana
      t.string :english_name
      t.string :kanji

      t.timestamps
    end
  end
end
