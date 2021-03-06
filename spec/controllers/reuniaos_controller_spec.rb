require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ReuniaosController do

  # This should return the minimal set of attributes required to create a valid
  # Reuniao. As you add validations to Reuniao, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ReuniaosController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all reuniaos as @reuniaos" do
      reuniao = Reuniao.create! valid_attributes
      get :index, {}, valid_session
      assigns(:reuniaos).should eq([reuniao])
    end
  end

  describe "GET show" do
    it "assigns the requested reuniao as @reuniao" do
      reuniao = Reuniao.create! valid_attributes
      get :show, {:id => reuniao.to_param}, valid_session
      assigns(:reuniao).should eq(reuniao)
    end
  end

  describe "GET new" do
    it "assigns a new reuniao as @reuniao" do
      get :new, {}, valid_session
      assigns(:reuniao).should be_a_new(Reuniao)
    end
  end

  describe "GET edit" do
    it "assigns the requested reuniao as @reuniao" do
      reuniao = Reuniao.create! valid_attributes
      get :edit, {:id => reuniao.to_param}, valid_session
      assigns(:reuniao).should eq(reuniao)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Reuniao" do
        expect {
          post :create, {:reuniao => valid_attributes}, valid_session
        }.to change(Reuniao, :count).by(1)
      end

      it "assigns a newly created reuniao as @reuniao" do
        post :create, {:reuniao => valid_attributes}, valid_session
        assigns(:reuniao).should be_a(Reuniao)
        assigns(:reuniao).should be_persisted
      end

      it "redirects to the created reuniao" do
        post :create, {:reuniao => valid_attributes}, valid_session
        response.should redirect_to(Reuniao.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved reuniao as @reuniao" do
        # Trigger the behavior that occurs when invalid params are submitted
        Reuniao.any_instance.stub(:save).and_return(false)
        post :create, {:reuniao => {}}, valid_session
        assigns(:reuniao).should be_a_new(Reuniao)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Reuniao.any_instance.stub(:save).and_return(false)
        post :create, {:reuniao => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested reuniao" do
        reuniao = Reuniao.create! valid_attributes
        # Assuming there are no other reuniaos in the database, this
        # specifies that the Reuniao created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Reuniao.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => reuniao.to_param, :reuniao => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested reuniao as @reuniao" do
        reuniao = Reuniao.create! valid_attributes
        put :update, {:id => reuniao.to_param, :reuniao => valid_attributes}, valid_session
        assigns(:reuniao).should eq(reuniao)
      end

      it "redirects to the reuniao" do
        reuniao = Reuniao.create! valid_attributes
        put :update, {:id => reuniao.to_param, :reuniao => valid_attributes}, valid_session
        response.should redirect_to(reuniao)
      end
    end

    describe "with invalid params" do
      it "assigns the reuniao as @reuniao" do
        reuniao = Reuniao.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Reuniao.any_instance.stub(:save).and_return(false)
        put :update, {:id => reuniao.to_param, :reuniao => {}}, valid_session
        assigns(:reuniao).should eq(reuniao)
      end

      it "re-renders the 'edit' template" do
        reuniao = Reuniao.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Reuniao.any_instance.stub(:save).and_return(false)
        put :update, {:id => reuniao.to_param, :reuniao => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested reuniao" do
      reuniao = Reuniao.create! valid_attributes
      expect {
        delete :destroy, {:id => reuniao.to_param}, valid_session
      }.to change(Reuniao, :count).by(-1)
    end

    it "redirects to the reuniaos list" do
      reuniao = Reuniao.create! valid_attributes
      delete :destroy, {:id => reuniao.to_param}, valid_session
      response.should redirect_to(reuniaos_url)
    end
  end

end
