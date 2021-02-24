class ChildrenController < ApplicationController
  before_action :load_member
  before_action :load_child, only: [:show, :edit, :update]

  def show; end

  def new
    @child = Child.new(member: @member)
  end

  def create
    @child = Child.new(child_params)
    if @child.save
      redirect_to member_path(@member.id)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @child.update(child_params)
      redirect_to member_path(@member.id)
    else
      render :edit
    end
  end

  private

  def load_child
    @child = @member.children.find(params[:id])
  end

  def load_member
    @member = Member.find(params[:member_id])
  end

  def child_params
    params.require(:child).permit(
      [
        :member_id,
        :first_name,
        :last_name,
        :date_joined,
        :date_left,
        :birthday,
        :monday,
        :tuesday,
        :wednesday,
        :thursday,
        :friday,
        :gender,
        :ethnicity,
        :iwi,
        :language,
        :immunisations_received,
        :emergency_alternative_contact,
        :hepatitis_b,
        :polio,
        :diptheria,
        :tetanus,
        :pertussis,
        :hib,
        :measles,
        :rubella,
        :pneumococcal,
        :allows_photos,
        :excursions,
        :phone_list,
        :assoc_phone_list,
        :sunscreen,
        :insect_repellant,
        :arnica
      ]
    )
  end
end
