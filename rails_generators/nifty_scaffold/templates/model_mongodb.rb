class <%= class_name %>
  include MongoMapper::Document
  #include MongoMapper::EmbeddedDocument

  attr_accessible <%= attributes.map { |a| ":#{a.name}" }.join(", ") %>
  <% attributes.each do |a| %>
  key :<%=a.name -%>, <%=a.type.to_s.camelize -%>
  <% end %>

end
