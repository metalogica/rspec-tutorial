require 'spec_helper'

describe Schedule do
  let(:schedule) { Schedule.new }

  it "should calculate total hours" do
    days = double('days')
    expect(days).to receive(:sum).with(:hours).and return_(40)
    allow(schedule).to receive(:days).and_return(days)
    expect(schedule.total_hours).to eq(40)
  end
end

