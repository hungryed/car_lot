require 'spec_helper'

describe Car do
  it { should belong_to :color }
  it { should validate_presence_of :color }
  it { should validate_presence_of :mileage }
  it { should validate_presence_of :year }
  it { should validate_numericality_of :year }
  it { should validate_numericality_of :mileage }

  it { should have_valid(:description).when(nil, '') }

  it { should have_valid(:mileage).when(90) }
  it { should_not have_valid(:mileage).when(-980) }

  it { should have_valid(:year).when(1999) }
  it { should_not have_valid(:year).when(1979) }
end
