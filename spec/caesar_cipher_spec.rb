require './lib/caesar_cipher'

describe "#caesar_cipher" do 
  it "returns \'xcfko\' when \'vadim\' and 2 inputed" do
    expect(caesar_cipher('vadim', 2)).to eql('xcfko')
  end
end