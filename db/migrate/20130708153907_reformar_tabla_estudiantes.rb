class ReformarTablaEstudiantes < ActiveRecord::Migration
  def up
  	remove_column :estudiantes, :estado
    remove_column :estudiantes, :municipio
    remove_column :estudiantes, :fecha_planilla
    remove_column :estudiantes, :nivel_de_estudios
    remove_column :estudiantes, :institucion
    remove_column :estudiantes, :tipo_institucion
    remove_column :estudiantes, :carrera
    remove_column :estudiantes, :duracion
    remove_column :estudiantes, :tipo_estudio
    remove_column :estudiantes, :periodo
    remove_column :estudiantes, :escala
    remove_column :estudiantes, :beca
    remove_column :estudiantes, :beca_mont
    remove_column :estudiantes, :institucion_beca
  end

  def down
  end
end



   # add_column :estudiantes, :estado, :string
   # add_column :estudiantes, :municipio, :string
   # add_column :estudiantes, :fecha_planilla, :date
   # add_column :estudiantes, :nivel_de_estudios, :string
   # add_column :estudiantes, :institucion, :string
   # add_column :estudiantes, :tipo_institucion, :string
   # add_column :estudiantes, :carrera, :string
   # add_column :estudiantes, :duracion, :string
   # add_column :estudiantes, :tipo_estudio, :string
   # add_column :estudiantes, :periodo, :string
   # add_column :estudiantes, :escala, :string
   # add_column :estudiantes, :beca, :boolean
   # add_column :estudiantes, :beca_mont, :string
   # add_column :estudiantes, :institucion_beca, :string
