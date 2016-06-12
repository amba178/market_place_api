require 'spec_helper'

describe User do
 before { @user = FactoryGirl.build(:user) }

 subject { @user }

 it { respond_to(:email, :password, :password_confirmation) }
 it { be_valid }

end
