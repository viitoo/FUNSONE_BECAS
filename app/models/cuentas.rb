class Cuentas < ActiveRecord::Base
  audited
  attr_accessible :cedula, :estudiante_id, :monto, :n_cuenta
  belongs_to :estudiante

end
