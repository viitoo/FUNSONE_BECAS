class Estudiante < ActiveRecord::Base
	audited

<<<<<<< HEAD
	attr_accessible :nombre,:apellido,:sexo,:edad,:lugar_nac,:fecha_nac,:nacionalidad,:edo_civil,:direccion,:twitter,:pin,:created_at,:updated_at,:cedula,:email,:telf_casa,:telf_trabajo,
	:telf_movil,:nombres_papa,:apellidos_papa,:cedula_papa,:nombres_mama,:apellidos_mama,:cedula_mama,:parentezco,:trabajo_actual,:nombre_empresa,:rif_empresa,:cargo_empresa,
	:direccion_empresa,:telefono_empresa,:sueldo_empresa,:jefe_inmediato,:telf_jefe,:nombre_familiar,:apellido_familiar,:cedula_familiar,:telf_familiar,:municipio,:estado,:becas_attributes
=======
	attr_accessible :nombre,:nombre2,:apellido,:apellido2,:sexo,:edad,:lugar_nac,:fecha_nac,:nacionalidad,:edo_civil,:direccion,:twitter,:pin,:created_at,:updated_at,:cedula,:email,:telf_casa,:telf_trabajo,:r_nombre1, :r_nombre2, :r_apellido1, :r_apellido2, :r_cedula , :r_fecha_nac,:r_nacionalidad, :r_sexo,:municipio,:estado,:becas_attributes,:telf_movil
>>>>>>> 708882465d44b2ff58afee966b0dac880862d8b7
  
  has_one :cuentas
  has_many :becas, dependent: :destroy
  accepts_nested_attributes_for :becas, :reject_if => :all_blank
  #accepts_nested_attributes_for :reclamos, :reject_if => :all_blank

<<<<<<< HEAD
  validates_presence_of :cedula, :nombre, :apellido
=======
  validates_presence_of :cedula, :nombre, :apellido,:direccion, :fecha_nac,:nacionalidad,:telf_movil
>>>>>>> 708882465d44b2ff58afee966b0dac880862d8b7
  validates :municipio,:presence => true
  validates :cedula , uniqueness: true 


  def self.search(search, page)

  	  paginate :per_page => 50, :page => page, :conditions => ['estudiantes.id like ? or estudiantes.email like ? or  estudiantes.cedula like ? or estudiantes.nombre like ? or estudiantes.apellido like ? or estudiantes.nombre+' '+estudiantes.apellido like ?' ,"%#{search}%","%#{search}%", "%#{search}%","%#{search}%","%#{search}%","%#{search}%" ], :order => 'id' 
 
  end


def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |estudiante|
      csv << estudiante.attributes.values_at(*column_names)
    end
  end
end
end


