class AddCuentaToBecas < ActiveRecord::Migration
  def change
  	add_column :becas, :n_cuenta , :string 
  end
  
end
