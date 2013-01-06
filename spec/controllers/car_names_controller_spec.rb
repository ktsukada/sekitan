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

describe CarNamesController do

  # This should return the minimal set of attributes required to create a valid
  # CarName. As you add validations to CarName, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CarNamesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all car_names as @car_names" do
      car_name = CarName.create! valid_attributes
      get :index, {}, valid_session
      assigns(:car_names).should eq([car_name])
    end
  end

  describe "GET show" do
    it "assigns the requested car_name as @car_name" do
      car_name = CarName.create! valid_attributes
      get :show, {:id => car_name.to_param}, valid_session
      assigns(:car_name).should eq(car_name)
    end
  end

  describe "GET new" do
    it "assigns a new car_name as @car_name" do
      get :new, {}, valid_session
      assigns(:car_name).should be_a_new(CarName)
    end
  end

  describe "GET edit" do
    it "assigns the requested car_name as @car_name" do
      car_name = CarName.create! valid_attributes
      get :edit, {:id => car_name.to_param}, valid_session
      assigns(:car_name).should eq(car_name)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CarName" do
        expect {
          post :create, {:car_name => valid_attributes}, valid_session
        }.to change(CarName, :count).by(1)
      end

      it "assigns a newly created car_name as @car_name" do
        post :create, {:car_name => valid_attributes}, valid_session
        assigns(:car_name).should be_a(CarName)
        assigns(:car_name).should be_persisted
      end

      it "redirects to the created car_name" do
        post :create, {:car_name => valid_attributes}, valid_session
        response.should redirect_to(CarName.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved car_name as @car_name" do
        # Trigger the behavior that occurs when invalid params are submitted
        CarName.any_instance.stub(:save).and_return(false)
        post :create, {:car_name => {}}, valid_session
        assigns(:car_name).should be_a_new(CarName)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CarName.any_instance.stub(:save).and_return(false)
        post :create, {:car_name => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested car_name" do
        car_name = CarName.create! valid_attributes
        # Assuming there are no other car_names in the database, this
        # specifies that the CarName created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CarName.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => car_name.to_param, :car_name => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested car_name as @car_name" do
        car_name = CarName.create! valid_attributes
        put :update, {:id => car_name.to_param, :car_name => valid_attributes}, valid_session
        assigns(:car_name).should eq(car_name)
      end

      it "redirects to the car_name" do
        car_name = CarName.create! valid_attributes
        put :update, {:id => car_name.to_param, :car_name => valid_attributes}, valid_session
        response.should redirect_to(car_name)
      end
    end

    describe "with invalid params" do
      it "assigns the car_name as @car_name" do
        car_name = CarName.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CarName.any_instance.stub(:save).and_return(false)
        put :update, {:id => car_name.to_param, :car_name => {}}, valid_session
        assigns(:car_name).should eq(car_name)
      end

      it "re-renders the 'edit' template" do
        car_name = CarName.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CarName.any_instance.stub(:save).and_return(false)
        put :update, {:id => car_name.to_param, :car_name => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested car_name" do
      car_name = CarName.create! valid_attributes
      expect {
        delete :destroy, {:id => car_name.to_param}, valid_session
      }.to change(CarName, :count).by(-1)
    end

    it "redirects to the car_names list" do
      car_name = CarName.create! valid_attributes
      delete :destroy, {:id => car_name.to_param}, valid_session
      response.should redirect_to(car_names_url)
    end
  end

end
