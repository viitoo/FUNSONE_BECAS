class AddPersonalsFieldsToEstudiantes < ActiveRecord::Migration
  def up
    add_column :estudiantes, :cedula, :string
    add_column :estudiantes, :email, :string
    add_column :estudiantes, :telf_casa, :string
    add_column :estudiantes, :telf_trabajo, :string
    add_column :estudiantes, :telf_movil,:string
    add_column :estudiantes, :nombres_papa, :string
    add_column :estudiantes, :apellidos_papa, :string
    add_column :estudiantes, :cedula_papa, :string
    add_column :estudiantes, :nombres_mama, :string
    add_column :estudiantes, :apellidos_mama, :string
    add_column :estudiantes, :cedula_mama, :string
    add_column :estudiantes, :estado, :string
    add_column :estudiantes, :municipio, :string
    add_column :estudiantes, :fecha_planilla, :date
    add_column :estudiantes, :nivel_de_estudios, :string
    add_column :estudiantes, :institucion, :string
    add_column :estudiantes, :tipo_institucion, :string
    add_column :estudiantes, :carrera, :string
    add_column :estudiantes, :duracion, :string
    add_column :estudiantes, :tipo_estudio, :string
    add_column :estudiantes, :periodo, :string
    add_column :estudiantes, :escala, :string
    add_column :estudiantes, :beca, :boolean
    add_column :estudiantes, :beca_mont, :string
    add_column :estudiantes, :institucion_beca, :string


  end



  def down
    remove_column :estudiantes, :cedula
    remove_column :estudiantes, :email
    remove_column :estudiantes, :telf_casa
    remove_column :estudiantes, :telf_trabajo
    remove_column :estudiantes, :telf_movil
    remove_column :estudiantes, :nombres_papa
    remove_column :estudiantes, :apellidos_papa
    remove_column :estudiantes, :cedula_papa
    remove_column :estudiantes, :nombres_mama
    remove_column :estudiantes, :apellidos_mama
    remove_column :estudiantes, :cedula_mama
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
end
