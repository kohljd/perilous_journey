require "spec_helper"

RSpec.describe Node do
  let(:node) {Node.new("Burke")}
  
  it 'exists' do
    expect(node).to be_an_instance_of Node
  end

  it 'has attributes' do
    expect(node.surname).to eq("Burke")
    expect(node.next_node).to be nil
  end
end