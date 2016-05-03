class RefactorizacionDeBecas < ActiveRecord::Migration
  def up
	remove_column :becas, :municipio
  end

  def down
  end
end
