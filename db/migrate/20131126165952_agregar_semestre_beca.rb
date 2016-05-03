class AgregarSemestreBeca < ActiveRecord::Migration
  def up
  	add_column :becas, :semestre ,:string
  end

  def down
  	remove_column :becas, :semestre
  end
end
