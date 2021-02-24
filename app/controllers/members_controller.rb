class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
    @children = @member.children
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to members_path
    else
      render :new
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to members_path
    else
      render :edit
    end
  end

  private

  def member_params
    params.require(:member).permit([
      :family_id,
      :attending_parent,
      :date_joined,
      :date_left,
      :comments,
      :parents,
      :parents_email,
      :alternate_contact,
      :mobile,
      :address,
      :first_aid_expiry,
      :duty_day,
      :staff,
      :life_member
    ])
  end
end
