require 'spec_helper'

describe Sansu do
  describe '.validate' do
    it { expect{ Sansu.validate([]) }.to raise_error Sansu::Error::NoValuesError }
    it { expect{ Sansu.validate(['a']) }.to raise_error Sansu::Error::IncludingNonNumericError }
    it { expect{ Sansu.validate([[]]) }.to raise_error Sansu::Error::IncludingNonNumericError }
  end
end
