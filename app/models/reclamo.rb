class Reclamo < ActiveRecord::Base
  attr_accessible :asignado_por, :beca_id, :fecha_final, :motivo, :observacion, :responsable, :solucion, :status, :tipo_motivo,:becas_attributes
  belongs_to :beca
  belongs_to :estudiante
  serialize :tipo_motivo
  validates_presence_of :responsable,:beca_id,:status,:motivo,:tipo_motivo

def self.search(search, page)
 	paginate :per_page => 20, :page => page, :conditions => ['beca_id like ? or  responsable like  ?',"%#{search}%", "%#{search}%" ], :order => 'status ASC, created_at DESC'  
end


end
