require "spec_helper"

RSpec.describe LinkedList do
  let(:list) {LinkedList.new}

  it "exists" do
    expect(list).to be_an_instance_of LinkedList
  end

  it "initially has no head" do
    expect(list.head).to be nil
  end

  it "#append" do
    list.append("West")
    
    expect(list.head).to be_an_instance_of Node
    expect(list.head.surname).to eq "West"
    expect(list.head.next_node).to eq nil

    list.append("Rhodes")
    expect(list.head.surname).to eq "Rhodes"
    expect(list.head.next_node).to eq nil
  end

  it "#count" do
    list.append("West")
    list.append("Rhodes")
    
    expect(list.count).to eq 2
  end

  it "#to_string" do
    list.append("West")
    expect(list.to_string).to eq "The West family, followed by the Rhodes family"
  end
end