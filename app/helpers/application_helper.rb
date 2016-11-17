module ApplicationHelper
  
  def link_to_add_fields(name, e, association, locals={})
     new_object = e.object.class.reflect_on_association(association).klass.new
    fields = e.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
     
      render(association.to_s.singularize + "_fields", e: builder)
    end
    link_to_function(name, ("add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")"), class: locals[:class])
  end

  def link_to_add_fields_3(name, e, association, locals={})
     new_object = e.object.class.reflect_on_association(association).klass.new
    fields = e.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
     
      render(association.to_s.singularize + "_fields", e: builder)
    end
    link_to_function(name, ("add_fields_3(this, \"#{association}\", \"#{escape_javascript(fields)}\")"), class: locals[:class])
  end

  def link_to_remove_fields(name, e, locals={})
    e.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)", class: locals[:class])
  end

    def link_to_remove_fields_3(name, e, locals={})
    e.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)", class: locals[:class])
  end

  def link_to_remove_sub_topic_fields(name, e, locals={})
    e.hidden_field(:_destroy) + link_to_function(name, "remove_sub_topic_fields(this)", class: locals[:class])
  end
  
  def link_to_add_fields_1(name, e, association, locals={})
     new_object = e.object.class.reflect_on_association(association).klass.new
    fields = e.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", e: builder)
    end
    link_to_function(name, ("add_fields_1(this, \"#{association}\", \"#{escape_javascript(fields)}\")"), class: locals[:class])
  end

  def link_to_add_fields_2(name, e, association, locals={})
     new_object = e.object.class.reflect_on_association(association).klass.new
    fields = e.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", e: builder)
    end
    link_to_function(name, ("add_fields_2(this, \"#{association}\", \"#{escape_javascript(fields)}\")"), class: locals[:class])
  end

  def link_to_remove_fields_1(name, e, locals={})
    e.hidden_field(:_destroy) + link_to_function(name, "remove_fields_1(this)", class: locals[:class])
  end

   def link_to_remove_fields_2(name, e, locals={})
    e.hidden_field(:_destroy) + link_to_function(name, "remove_fields_1(this)", class: locals[:class])
  end

  def link_to_remove_daily_plan_fields(name, e, locals={})
    e.hidden_field(:_destroy) + link_to_function(name, "remove_daily_plan_fields(this)", class: locals[:class])
  end

  
  
end
