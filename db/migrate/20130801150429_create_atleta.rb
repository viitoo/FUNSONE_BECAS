class CreateAtleta < ActiveRecord::Migration
  def change
    create_table :atleta do |t|
      t.string :nombres
      t.string :apellidos
      t.string :cedula
      t.string :telefono
      t.string :disciplina

      t.timestamps
    end
  end
end
