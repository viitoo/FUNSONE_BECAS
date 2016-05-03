module ApplicationHelper
  def link_to_remove_fields(name, f, options = {})
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)", options)
  end

  def link_to_add_fields(name, f, association, options = {})
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{ association }") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end

    link_to_function(name, "add_fields(this, \"#{ association }\", \"#{ escape_javascript(fields) }\")", options)
  end


def is_admin?(user)
  admin_role = Role.find(:first, :conditions => ["name = ?", "admin"])
  return user.roles.include?(admin_role)
end


def periodo 
  $periodo = Configuracion.where(:status=>1).pluck(:periodo)
  
end

end
