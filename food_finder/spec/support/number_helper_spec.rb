# encoding: UTF-8

describe 'NumberHelper' do

  include NumberHelper

  describe '#number_to_currency' do

    context 'using default values' do

      it "correctly formats an integer" do
        expect(number_to_currency(2000)).to eq('$2,000.00')
      end

      it "correctly formats a float" do
        expect(number_to_currency(2000.05)).to eq('$2,000.05')
      end

      it "correctly formats a string" do
        expect(number_to_currency('2000')).to eq('$2,000.00')
      end

      it "uses delimiters for very large numbers" do
        expect(number_to_currency('20000000')).to eq('$20,000,000.00')
      end

      it "does not have delimiters for small numbers" do
        expect(number_to_currency(20)).to eq('$20.00')
      end

    end

    context 'using custom options' do

      it 'allows changing the :unit' do
        expect(number_to_currency(20, { :unit => '¥'})).to eq ('¥20.00')
      end

      it 'allows changing the :precision' do
        expect(number_to_currency(20.10, { :precision => 4})).to eq ('$20.1000')
      end

      it 'omits the separator if :precision is 0' do
        expect(number_to_currency(20.03, { :precision => 0})).not_to include('.')
        # expect(hash).not_to include({'a' => 1, 'c' => 3})
      end

      it 'allows changing the :delimiter' do
        expect(number_to_currency(20000.03, { :delimiter => '_'})).to eq('$20_000.03')
      end

      it 'allows changing the :separator' do
        expect(number_to_currency(20000.03, { :separator => '_'})).to eq('$20,000_03')
      end

      it 'correctly formats using multiple options' do
        expect(number_to_currency(20000.03, {
          :separator => '_',
          :delimiter => '_',
          :precision => 4,
          :unit => '¥'
        })).to eq('¥20_000_0300')
      end

    end

  end

end
