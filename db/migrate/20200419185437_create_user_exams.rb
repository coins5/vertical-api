class CreateUserExams < ActiveRecord::Migration[6.0]
  def change
    create_table :user_exams do |t|
      t.date :fecha
      t.integer :puntaje
      t.references :user, null: false, foreign_key: true
      t.references :exam, null: false, foreign_key: true

      t.timestamps
    end
  end
end
