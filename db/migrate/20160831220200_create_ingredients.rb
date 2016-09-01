class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.references :listable, polymorphic: true, index: true
      t.string     :name
      t.decimal    :quantity
      t.string     :quantity_units

      t.timestamps
    end
  end
end
