class UsersController < ApplicationController
  before_filter :find_and_verify_readability, :except => [:me]
  def show
    @experiment_group_prototypes = ExperimentGroupPrototype.all
  end
  def me
    redirect_to current_user
  end
  def update
    @user.update_attributes(params[:user])
    redirect_to @user
  end
protected
  def find_and_verify_readability
    @user = User.find(params[:id])
    raise "Forbidden" unless @user == current_user
  end
end
