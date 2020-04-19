class CreateSedes < ActiveRecord::Migration[6.0]
  def change
    create_table :sedes do |t|
      t.string :nombre
      t.string :distrito

      t.timestamps
    end
  end
end
