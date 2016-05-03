class Beca < ActiveRecord::Base
  audited
  attr_accessible :status_beca  ,:nivel_de ,:institucion ,:tipo_institucion ,:carrera,:duracion,:tipo_estudio ,:periodo ,:escala ,:promedio_actual ,:beca ,:beca_mont ,:institucion_beca,:estudiante_id,:reclamos_attributes,:foto, :partica_nac, :copia_cedula,:carta_residencia, :constancia_inscripcion, :constancia_estudios,:notas_bachiller,:record_academico,:fondo_negro,:regimen,:tipo_beca,:semestre, :estudio_economico,:menosmaterias,:reclamos_attributes
<<<<<<< HEAD
  validates :status_beca,:nivel_de,:regimen,:tipo_beca, :estudio_economico, :presence => true
=======
  validates :status_beca,:nivel_de,:institucion,:tipo_institucion,:carrera,:duracion,:tipo_estudio,:periodo,:escala,:promedio_actual,:regimen, :estudio_economico, :presence => true
>>>>>>> 708882465d44b2ff58afee966b0dac880862d8b7
  
  has_one :estudiante
  has_many :reclamos
  
  accepts_nested_attributes_for :reclamos, :reject_if => :all_blank




end
