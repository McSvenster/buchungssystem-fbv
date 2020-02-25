require 'rails_helper'


RSpec.describe BookingsController, type: :controller do

  let(:valid_attributes) {
    build(:valid_booking).attributes
  }

  let(:valid_session) { {} }

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Booking" do
        expect {
          create(:valid_booking)
        }.to change(Booking, :count).by(1)
      end

      it "assigns a newly created booking as @booking" do
        puts valid_attributes
        post :create, {:booking => valid_attributes}, valid_session
        expect(assigns(:booking)).to be_a(Booking)
        expect(assigns(:booking)).to be_persisted
      end

      # it "redirects to the created booking" do
      #   post :create, create(:valid_booking), valid_session
      #   expect(response).to redirect_to(Booking.last)
      # end

      it "denies saving a booking without valid session" do
        skip("noch nicht implementiert")
      end

    end

    context "with invalid params" do
      # it "assigns a newly created but unsaved booking as @booking" do
      #   post :create, create(:booking), valid_session
      #   expect(assigns(:booking)).to be_a_new(Booking)
      # end

      # it "re-renders the 'new' template" do
      #   post :create, create(:booking), valid_session
      #   expect(response).to render_template("new")
      # end
    end
  end

end