class ProfilesController < ApplicationController
  
  def new
    @profile = Profile.new
  end

  def create
    profile = current_user.create_profile(profile_params)
    
    if profile.persisted?
      redirect_to root_path, notice: "You have successfully created a host profile. Now you can apply to host cats."
    else
      redirect_to new_profile_path, notice: "Please fill in all fields"
    end
    
  end

  private
  
  def profile_params
    params.require(:profile).permit(:name, :location, :description, :picture)
  end

end
