require 'rspec'
require_relative './Palindrome.rb'

RSpec.describe Palindrome do
  let (:palindrome ) {Palindrome.new}
  describe '#palindrome?' do

    it "returns true for a simple palindrome" do
      expect(palindrome.palindrome_number?('racecar')).to eq(true)
    end 
    
     it "returns false for a non-palindrome" do
      expect(palindrome.palindrome_number?('Aman')).to eq(false)
    end

    it "if string is empty" do 
      expect (palindrome.palindrome_number?(" ")).to eq (true)
  end
end
