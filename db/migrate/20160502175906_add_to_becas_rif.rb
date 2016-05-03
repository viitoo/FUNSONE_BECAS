class AddToBecasRif < ActiveRecord::Migration
  def up
	add_column :estudiantes , :rif, :string
	remove_column :becas, :notas_bachiller
  end

  def down
	remove_column :estudiantes, :rif
  end
end
