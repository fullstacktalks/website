require 'spec_helper'

describe TalksController do

  def valid_attributes
    { "title" => "MyString" }
  end

  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all talks as @talks" do
      talk = Talk.create! valid_attributes
      get :index, {}, valid_session
      assigns(:talks).should eq([talk])
    end
  end

  describe "GET show" do
    it "assigns the requested talk as @talk" do
      talk = Talk.create! valid_attributes
      get :show, {:id => talk.to_param}, valid_session
      assigns(:talk).should eq(talk)
    end
  end

  describe "GET new" do
    it "assigns a new talk as @talk" do
      get :new, {}, valid_session
      assigns(:talk).should be_a_new(Talk)
    end
  end

  describe "GET edit" do
    it "assigns the requested talk as @talk" do
      talk = Talk.create! valid_attributes
      get :edit, {:id => talk.to_param}, valid_session
      assigns(:talk).should eq(talk)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Talk" do
        expect {
          post :create, {:talk => valid_attributes}, valid_session
        }.to change(Talk, :count).by(1)
      end

      it "assigns a newly created talk as @talk" do
        post :create, {:talk => valid_attributes}, valid_session
        assigns(:talk).should be_a(Talk)
        assigns(:talk).should be_persisted
      end

      it "redirects to the created talk" do
        post :create, {:talk => valid_attributes}, valid_session
        response.should redirect_to(Talk.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved talk as @talk" do
        # Trigger the behavior that occurs when invalid params are submitted
        Talk.any_instance.stub(:save).and_return(false)
        post :create, {:talk => { "title" => "invalid value" }}, valid_session
        assigns(:talk).should be_a_new(Talk)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Talk.any_instance.stub(:save).and_return(false)
        post :create, {:talk => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested talk" do
        talk = Talk.create! valid_attributes
        # Assuming there are no other talks in the database, this
        # specifies that the Talk created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Talk.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => talk.to_param, :talk => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested talk as @talk" do
        talk = Talk.create! valid_attributes
        put :update, {:id => talk.to_param, :talk => valid_attributes}, valid_session
        assigns(:talk).should eq(talk)
      end

      it "redirects to the talk" do
        talk = Talk.create! valid_attributes
        put :update, {:id => talk.to_param, :talk => valid_attributes}, valid_session
        response.should redirect_to(talk)
      end
    end

    describe "with invalid params" do
      it "assigns the talk as @talk" do
        talk = Talk.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Talk.any_instance.stub(:save).and_return(false)
        put :update, {:id => talk.to_param, :talk => { "title" => "invalid value" }}, valid_session
        assigns(:talk).should eq(talk)
      end

      it "re-renders the 'edit' template" do
        talk = Talk.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Talk.any_instance.stub(:save).and_return(false)
        put :update, {:id => talk.to_param, :talk => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested talk" do
      talk = Talk.create! valid_attributes
      expect {
        delete :destroy, {:id => talk.to_param}, valid_session
      }.to change(Talk, :count).by(-1)
    end

    it "redirects to the talks list" do
      talk = Talk.create! valid_attributes
      delete :destroy, {:id => talk.to_param}, valid_session
      response.should redirect_to(talks_url)
    end
  end

end
