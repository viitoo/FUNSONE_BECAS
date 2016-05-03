class Cuenta < ActiveRecord::Base
  audited
  attr_accessible :monto,:cedula,:n_cuenta,:estudiante_id,:estudiante_attributes
  
  belongs_to :estudiante
end
