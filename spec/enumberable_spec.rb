# spec/enumerable_spec.rb
require 'enumerable_extension'

describe Enumerable do

  let(:ary) { [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] }

  describe "#my_select" do

    context "with non-enumerable object" do
      it { expect { nil.my_select { |e| e.nil? } }.to raise_error NoMethodError }
      it { expect { 99.my_select { |e| e.nil? } }.to raise_error NoMethodError }
      it { expect { "hello".my_select { |e| e.nil? } }.to raise_error NoMethodError }
    end

    context "given a call to my_select with an array" do

      it "returns an array" do
        expect(ary.my_select { |x| x }).to be_instance_of Array
      end

      it "returns the numbers that are less than two" do
        expect(ary.my_select {|x| x < 2}).to eql([1])
      end

      it "returns even numbers except for 2" do
        expect([1,2,3,4,5,6,7,8,9,10].my_select {|x| x.even? && x != 2}).to eql([4,6,8,10])
      end
    end
  end
end
