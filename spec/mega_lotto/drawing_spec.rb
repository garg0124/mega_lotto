require 'spec_helper'

module MegaLotto
  RSpec.describe Drawing do
    describe "#draw" do
      let(:drawing) { Drawing.new.draw }

      it "returns an array" do
        expect(drawing).to be_a(Array)
      end

      it "returns an array with 5 element" do
        expect(drawing.size).to eq(5)
      end

      it "each element is an Integer" do
        drawing.each do |item|
         expect(item).to be_a(Integer)
        end
      end

      it "each element is < 60" do
        drawing.each do |item|
         expect(item).to be < 60
        end
      end
    end
  end
end
