class CreateCuentas < ActiveRecord::Migration
  def change
    create_table :cuentas do |t|
      t.integer :estudiante_id
      t.string :n_cuenta
      t.string :monto
      t.string :cedula

      t.timestamps
    end
  end
end
