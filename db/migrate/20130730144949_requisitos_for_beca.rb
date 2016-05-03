class RequisitosForBeca < ActiveRecord::Migration
def up
	add_column :becas, :foto,:boolean
	add_column :becas, :partica_nac,:boolean
	add_column :becas, :copia_cedula,:boolean
	add_column :becas, :carta_residencia,:boolean
	add_column :becas, :constancia_inscripcion,:boolean
	add_column :becas, :constancia_estudios,:boolean
	add_column :becas, :notas_bachiller,:boolean
	add_column :becas, :record_academico,:boolean
	add_column :becas, :fondo_negro,:boolean
end


  def down
  	remove_column :becas, :foto
  	remove_column :becas, :partica_nac
  	remove_column :becas, :copia_cedula
  	remove_column :becas, :carta_residencia
  	remove_column :becas, :constancia_inscripcion
  	remove_column :becas, :constancia_estudios
  	remove_column :becas, :notas_bachiller
  	remove_column :becas, :record_academico
  	remove_column :becas, :fondo_negro
  end
end
