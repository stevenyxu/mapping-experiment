class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :interest

  has_many :experiments

  def experiment_in experiment_group_prototype
    experiments.
      joins(:experiment_prototype => :experiment_group_prototype).
      where('experiment_group_prototypes.id = ?', experiment_group_prototype.id).
      first
  end
end
