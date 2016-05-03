class CreateBecas < ActiveRecord::Migration
  def change
    create_table :becas do |t|

	 t.string :status_beca
	 t.string :estado
 	 t.string :municipio
	 t.string :nivel_de
	 t.string :institucion
	 t.string :tipo_institucion
	 t.string :carrera
	 t.string :duracion
	 t.string :tipo_estudio
	 t.string :periodo
	 t.string :escala
	 t.string :promedio_actual
	 t.boolean :beca
	 t.string :beca_mont
	 t.string :institucion_beca


      t.timestamps
    end
  end
end
