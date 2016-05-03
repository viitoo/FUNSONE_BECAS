class Notification < ActionMailer::Base
  default from: "funjemasu@gmail.com"
  #ActionMailer::Base.default_url_options = { :host => "localhost:3000" }

  def documentos(estudiante)
  	 @estudiante = estudiante
  	  mail to: estudiante.email, subject: "FUNJEMASU NOTIFICACION: FALTAN DOCUMENTOS"
  end	

end
