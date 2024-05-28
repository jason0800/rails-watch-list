class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.belongs_to :movie, foreign_key: true
      t.belongs_to :list, foreign_key: true

      t.timestamps
    end
  end
end
