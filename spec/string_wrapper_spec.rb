require 'string_wrapper'

RSpec.describe StringWrapper do
  let(:str1){StringWrapper.new("willyBZ1")}
  describe ".reverse" do
    it "reverses the string" do
      expect(str1.reverse).to eq('1ZBylliw')
    end
  end

  describe ".upcase" do
    it "converts the string to uppercase" do
      expect(str1.upcase).to eq('WILLYBZ1')
    end
  end

  describe ".downcase" do
    it "converts the string to lowercase" do
      expect(str1.downcase).to eq('willybz1')
    end
  end
end
