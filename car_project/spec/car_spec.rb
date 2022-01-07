require 'car'
require 'shared_examples/a_standard_vehicle'

describe Car do
  it "allows reading for :wheels" do

  end

  describe 'attributes' do

    # No longer required because we're now using a class name in our describe `describe Car do`
    # subject { Car.new }

    # use "subject" instead of "let" if variable is subject of example
    # let(:car) { Car.new }

    # `let` is better than "before" for setting up instance varaibles
    # before(:example) do
    #   car = Car.new
    # end

    it_behaves_like('a standard vehicle')

  end

  context '.colors' do
    it "returns an array of color names" do
      c = ['blue', 'black', 'red', 'green']
      expect(Car.colors).to match_array(c)
    end
  end

  describe '#full_name' do
    let(:honda) { Car.new({:make => 'Honda', :year => '2001', :color => 'red'}) }

    it 'returns a string in the expected format' do
      expect(honda.full_name).to eq('2001 Honda (red)')
    end

    context 'when initialized with no arguments' do
      it 'returns a string with the default values' do
        car = Car.new
        expect(car.full_name).to eq('2007 Volvo (unknown)')
      end
    end
  end



end
