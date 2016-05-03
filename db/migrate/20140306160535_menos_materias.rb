class MenosMaterias < ActiveRecord::Migration
  def up
  	  	add_column :becas, :menosmaterias, :boolean

  end

  def down
  	  	remove_column :becas, :menosmaterias

  end
end
