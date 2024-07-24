require 'rails_helper'

describe User do
  context 'with a valid email' do
    let(:user) { build(:user) }

    it 'succeeds' do
      expect { user.save }.to change(User, :count).by(1)
      expect(user.email).to match(User::EMAIL_REGEX)
    end
  end
end
