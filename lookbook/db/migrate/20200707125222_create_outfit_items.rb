class CreateOutfitItems < ActiveRecord::Migration[6.0]
  def change
    create_table :outfit_items do |t|
      t.belongs_to :item, null: false, foreign_key: true
      t.belongs_to :outfit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
