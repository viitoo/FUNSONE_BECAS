class AgregarEstadoEstudiantes < ActiveRecord::Migration
  def up
	add_column :estudiantes , :estado, :string
	remove_column :becas, :estado

  end

  def down
  end
end
