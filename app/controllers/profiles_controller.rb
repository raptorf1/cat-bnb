class ProfilesController < ApplicationController
  
  def new
    @profile = Profile.new
  end

  def create
    user = current_user
    profile = Profile.create(profile_params)
    user.profile_id = profile.id
    
    if profile.persisted?
      user.save  
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
