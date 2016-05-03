class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :apellido
      t.string :sexo
      t.integer :edad
      t.string :lugar_nac
      t.date :fecha_nac
      t.string :nacionalidad
      t.string :edo_civil
      t.text :direccion
      t.string :twitter
      t.string :pin

      t.timestamps
    end
  end
end
