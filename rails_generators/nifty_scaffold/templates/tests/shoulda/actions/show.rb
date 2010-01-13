  context "GET to :show" do
    setup do
      get :show, :id => <%= class_name %>.first
    end
    should_assign_to :<%= singular_name %>
    should_respond_with :success
    should_render_template :show
    should_not_set_the_flash
  end

