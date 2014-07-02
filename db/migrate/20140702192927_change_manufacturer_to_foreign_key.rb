class ChangeManufacturerToForeignKey < ActiveRecord::Migration
  def up
    remove_column :cars, :manufacturer
    add_column :cars, :manufacturer_id, :integer, null: false
  end

  def down
    remove_column :cars, :manufacturer_id
    add_column :cars, :manufacturer, :string, null: false
  end
end
