require 'spec_helper'

describe Color do
  it { should validate_presence_of :name }
  it { should have_many :cars }
end
