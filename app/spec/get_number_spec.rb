require_relative '../get_number'
require_relative '../array_generator'
require 'rspec'
Rspec.describe GetNumber do
    describe '#initialize' do
        it "ask for a number" do
        number=GetNumber.new
        1.times {number.binary_conversion(3)}
        array=ArrayGenerator.new
        expect(array.choice).to eq(["wink", "double wink"])
        end
    end
end

Rspec.describe GetNumber do
    describe '#initialize' do
        it "ask for a number" do
        number=GetNumber.new
        1.times {number.binary_conversion(19)}
        array=ArrayGenerator.new
        expect(array.choice).to eq([ "double wink","wink"])
        end
    end
end
