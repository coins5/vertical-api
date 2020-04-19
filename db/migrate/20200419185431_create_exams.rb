class CreateExams < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.string :tipo_examen
      t.string :name
      t.string :description
      t.integer :minimo
      t.integer :promedio
      t.integer :maximo

      t.timestamps
    end
  end
end
