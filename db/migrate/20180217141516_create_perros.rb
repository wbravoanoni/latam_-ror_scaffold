class CreatePerros < ActiveRecord::Migration[5.0]
  def change
    create_table :perros do |t|
      t.string :nombre
      t.string :imagen
      t.string :descripcion
      t.integer :edad

      t.timestamps
    end
  end
end
