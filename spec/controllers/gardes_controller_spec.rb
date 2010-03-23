require File.dirname(__FILE__) + '/../spec_helper'
 
describe GardesController do
  fixtures :all
  integrate_views
  
  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end
  
  it "show action should render show template" do
    get :show, :id => Garde.first
    response.should render_template(:show)
  end
  
  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end
  
  it "create action should render new template when model is invalid" do
    Garde.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end
  
  it "create action should redirect when model is valid" do
    Garde.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(garde_url(assigns[:garde]))
  end
  
  it "edit action should render edit template" do
    get :edit, :id => Garde.first
    response.should render_template(:edit)
  end
  
  it "update action should render edit template when model is invalid" do
    Garde.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Garde.first
    response.should render_template(:edit)
  end
  
  it "update action should redirect when model is valid" do
    Garde.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Garde.first
    response.should redirect_to(garde_url(assigns[:garde]))
  end
  
  it "destroy action should destroy model and redirect to index action" do
    garde = Garde.first
    delete :destroy, :id => garde
    response.should redirect_to(gardes_url)
    Garde.exists?(garde.id).should be_false
  end
end
