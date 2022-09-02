require './lib/caesar_cipher'

describe "#caesar_cipher" do 
  it "returns \'xcfko\' when \'vadim\' and 2 inputed" do
    expect(caesar_cipher('vadim', 2)).to eql('The encoded message reads \'xcfko\'')
  end

  it "doesn\'t work with symbols not present in English alphabet" do
    expect(caesar_cipher('Вадим', 2)).to eql('Some of the characters are not from English alphabet. Try again!')
  end

  it "ignores signs" do
    expect(caesar_cipher('vadim!', 2)).to eql('The encoded message reads \'xcfko!\'')
  end

  it "skips onto the beginning of the alphabet, once in the end" do
    expect(caesar_cipher('z', 1)).to eql('The encoded message reads \'a\'')
  end

  it "doesn't work with empty space" do
    expect(caesar_cipher('', 2)).to eql('The encoded message reads \'\'')
  end
end