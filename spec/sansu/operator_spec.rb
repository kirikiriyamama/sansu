require 'spec_helper'

describe Sansu::Operator do
  describe '#sum' do
    it { expect([1, 2, 3].sum).to eq 6.0 }
  end

  describe '#mean' do
    it { expect([1, 2, 3].mean).to eq 2.0 }
  end

  describe '#median' do
    it { expect([2, 2, 1, 3].median).to eq 2.0 }
    it { expect([5, 4, 6].median).to eq 5.0 }
  end

  describe '#mode' do
    it { expect([1, 2, 2, 3].mode).to eq [2.0] }
    it { expect([4.5, 6, 6.0, 4.5].mode).to eq [4.5, 6.0] }
  end
end
