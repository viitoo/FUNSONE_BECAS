class CreateReclamos < ActiveRecord::Migration
  def change
    create_table :reclamos do |t|
      t.integer :responsable
      t.integer :asignado_por
      t.integer :beca_id
      t.string :status
      t.string :tipo_motivo
      t.string :motivo
      t.text :solucion
      t.text :observacion
      t.date :fecha_final

      t.timestamps
    end
  end
end
