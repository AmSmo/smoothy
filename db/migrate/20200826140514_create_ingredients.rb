class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.belongs_to :smoothy, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
