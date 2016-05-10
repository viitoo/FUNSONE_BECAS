class EstudiantesController < ApplicationController
    before_filter :authenticate_user!
    load_and_authorize_resource
    skip_authorize_resource :only => :notificacion


def notificacion
    @estudiante = Estudiante.find(params[:estudiante])
    if  Notification.documentos(@estudiante).deliver
      @mensaje = "El correo fue enviado al email: #{@estudiante.email}"
    end
    respond_to do |format|
      format.html {render "notificacion", :layout => false }
    end
    authorize!(:notificacion, @estudiante.id || Estudiante)
end


def estudiantes_nuevos
    @estudiantes_nuevos= Estudiante.joins(:becas)
    @periodo = Configuracion.where(:status=>true)
    @estudiantes= Estudiante.joins(:becas).where(becas: {tipo_beca: "Nuevo"}).count
end

def incompletos
   #@estudiantes_i = Estudiante.joins(:becas).search(params[:search], params[:incompletos_page]).where(becas: {foto: 0, partica_nac: 0 , copia_cedula:0 , carta_residencia:0, constancia_inscripcion:0, constancia_estudios: 0 , record_academico:0 ,tipo_beca: ["Actualizacion","Nuevo"]})
   @estudiantes_i = Estudiante.joins(:becas).search(params[:search], params[:incompletos_page]).where("(tipo_beca= 'Actualizacion' and (becas.foto = 0 or becas.partica_nac=0 or becas.copia_cedula=0 or becas.carta_residencia=0 or becas.constancia_inscripcion=0 or becas.constancia_estudios=0 or becas.record_academico=0 )) or (tipo_beca= 'Nuevo' and (becas.foto = 0 or becas.partica_nac=0 or becas.copia_cedula=0 or becas.carta_residencia=0 or becas.constancia_inscripcion=0 or becas.constancia_estudios=0 or becas.fondo_negro=0 or becas.notas_bachiller=0))").group("estudiantes.id")
   # @estudiantes_i = Estudiante.joins(:becas).search(params[:search], params[:incompletos_page]).group(:id)
end



def dashboard
   @limite_local = Configuracion.where(:status => 1).pluck(:limite_local)
   @limite_afuera = Configuracion.where(:status => 1).pluck(:limite_afuera)
   @limite_excelencia = Configuracion.where(:status => 1).pluck(:limite_excelencia)
   @monto_local = Configuracion.where(:status => 1).pluck(:monto_local)
   @monto_afuera = Configuracion.where(:status => 1).pluck(:monto_afuera)
   @monto_excelencia = Configuracion.where(:status => 1).pluck(:monto_excelencia)
   @total_nuevo_afuera = Estudiante.joins(:becas).where(becas: {tipo_beca: "Nuevo",regimen: "Afuera", periodo: "2014"}).count
   #@total_nuevo_afuera_es = Estudiante.joins(:becas).where(becas: {tipo_beca: "Nuevo",regimen: "Afuera",estudio_economico: "Si"}).count
   @total_nuevo_local = Estudiante.joins(:becas).where(becas: {tipo_beca: "Nuevo",regimen: "Local",periodo: "2014"  }).count
   #@total_nuevo_local_es = Estudiante.joins(:becas).where(becas: {tipo_beca: "Nuevo",regimen: "Local",estudio_economico: "Si" }).count
   @total_actualizacion = Estudiante.joins(:becas).where(becas: {tipo_beca: "Actualizacion",periodo: "2014" }).count
   @total_actualizacion_afuera = Estudiante.joins(:becas).where(becas: {tipo_beca: "Actualizacion" ,regimen: "Afuera", periodo: "2014"}).count
   #@total_actualizacion_afuera_es= Estudiante.joins(:becas).where(becas: {tipo_beca: "Actualizacion" ,estudio_economico: "Si",regimen: "Afuera"}).count
   @total_actualizacion_local = Estudiante.joins(:becas).where(becas: {tipo_beca: "Actualizacion" ,regimen: "local", periodo: "2014"}).count
   #@total_actualizacion_local_es= Estudiante.joins(:becas).where(becas: {tipo_beca: "Actualizacion" ,estudio_economico: "Si",regimen: "local"}).count
end



def index
  if params[:search].blank?
   @estudiantes_c = Estudiante.joins(:becas).search(params[:search], params[:completos_page]).where("(tipo_beca= 'Actualizacion' and (becas.foto = 1 and becas.partica_nac= 1 and becas.copia_cedula= 1 and becas.carta_residencia= 1 and becas.constancia_inscripcion=1 and becas.constancia_estudios=1 and becas.record_academico=1 )) or (tipo_beca= 'Nuevo' and (becas.foto = 1 and becas.partica_nac=1 and becas.copia_cedula=1 and becas.carta_residencia=1 and becas.constancia_inscripcion=1 and becas.constancia_estudios=1 and becas.fondo_negro=1))").group("estudiantes.id")
  else
   @estudiantes_c = Estudiante.joins(:becas).search(params[:search], params[:completos_page]).group("estudiantes.id")
  end

  respond_to do |format|
      format.html
      format.json { render json: @estudiantes }
      format.csv { send_data @estudiantes.to_csv}
      format.xls # { send_data @estudiantes.to_csv(col_sep: "\t") }
  end
end

  def show
    @estudiante = Estudiante.find(params[:id])
    @reclamos = Reclamo.where(:beca_id=>params[:id], :status=>["Abierto","En Proceso"])
    if (params[:identificador]==1)
      Notification.documentos(@estudiante).deliver
    end
    respond_to do |format|
      format.html
      format.json { render json: @estudiante }
    end
  end

  def new
    @estudiante = Estudiante.new
    @estudiante.becas.build if @estudiante.becas.empty?

    respond_to do |format|
      format.html
      format.json { render json: @estudiante }
    end
  end

  def edit
    @estudiante = Estudiante.find(params[:id])
   @periodo= Configuracion.where(:status=>true)
  end

  def create
    @estudiante = Estudiante.new(params[:estudiante])

    respond_to do |format|
      if @estudiante.save
        format.html { redirect_to @estudiante, notice: 'El estudiante ha sido creado' }
        format.json { render json: @estudiante, status: :created, location: @estudiante }
      else
        format.html { render action: "new" }
        format.json { render json: @estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @estudiante = Estudiante.find(params[:id])
    respond_to do |format|
      if @estudiante.update_attributes(params[:estudiante])
        format.html { redirect_to @estudiante, notice: 'El estudiante ha sido actualizado' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @estudiante = Estudiante.find(params[:id])
    @estudiante.destroy

    respond_to do |format|
      format.html { redirect_to estudiantes_url }
      format.json { head :no_content }
    end
  end
end
