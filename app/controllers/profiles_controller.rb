class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profile, only: [:show, :edit, :update]

  def show
    if @profile.nil?
      redirect_to edit_profile_path
    end
  end

  def edit
  end

  def update
    @profile = Profile.new

      if @profile.update(profile_params)
        redirect_to @profile
      else
        render :edit
      end
  end

  private

  def set_profile
      @profile = Profile.find_by(user_id: current_user.id)
  end

  def profile_params
    params.require(:profile).permit( :goal)
  end


end
