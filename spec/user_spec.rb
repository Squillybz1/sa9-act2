require 'user'

RSpec.describe User do
  let(:user){User.new('willybz1')}
  describe ".log_in" do
    it "logs the user in" do
      expect(user.log_in).to be true
    end
  end

  describe "#log_out" do
    it "logs the user out" do
      expect(user.log_out).to be false
    end
  end

  describe "#username" do
    it "returns the correct username" do
      expect(user.username).to eq('willybz1')
    end
  end
end
