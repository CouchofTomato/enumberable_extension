# spec/enumerable_spec.rb
require 'enumerable_extension'

describe Enumerable do
  describe "#my_select" do


    context "given a call to my_select with an array" do

      it "returns only those array objects that meet the select criteria" do
        expect([1,2,3].my_select {|x| x < 2}).to eql([1])
      end
    end
  end
end
