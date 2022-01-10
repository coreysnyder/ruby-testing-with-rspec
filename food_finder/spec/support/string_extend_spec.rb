describe 'String' do

  describe "#titleize" do

    it "capitalizes each word in a string" do
      expect('high output management'.titleize).to eq('High Output Management')
    end

    it "works with single-word strings" do
      expect('programming'.titleize).to eq('Programming')
    end

    it "capitalizes all uppercase strings" do
      expect('HIGH OUTPUT MANAGEMENT'.titleize).to eq('High Output Management')
    end

    it "capitalizes mixed-case strings" do
      expect('HiGh OutPut MaNagemeNT'.titleize).to eq('High Output Management')
    end

  end

  describe '#blank?' do

    it "returns true if string is empty" do
      expect(''.blank?).to be(true)
    end

    it "returns true if string contains only spaces" do
      expect('    '.blank?).to be true
    end

    it "returns true if string contains only tabs" do
      # Get a tab using a double-quoted string with \t
      # example: "\t\t\t"

      expect("\t\t\t".blank?).to be(true)
    end

    it "returns true if string contains only spaces and tabs" do
      expect("\t \t   \t".blank?).to be(true)
    end

    it "returns false if string contains a letter" do
      expect('s'.blank?).to be(false)
    end

    it "returns false if string contains a number" do
      expect('1'.blank?).to be(false)
    end

  end

end
