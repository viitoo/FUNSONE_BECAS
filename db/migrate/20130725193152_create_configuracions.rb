class CreateConfiguracions < ActiveRecord::Migration
  def change
    create_table :configuracions do |t|
      t.string :periodo

      t.timestamps
    end
  end
end
