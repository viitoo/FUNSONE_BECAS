class Configuracion < ActiveRecord::Base
  attr_accessible :periodo, :limite_local, :limite_afuera, :limite_excelencia,:status,:monto_local,:monto_afuera,:monto_excelencia
end
