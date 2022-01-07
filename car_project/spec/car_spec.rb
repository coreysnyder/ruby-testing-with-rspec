require 'car'

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

    it 'allows reading and writing for :make' do
      subject.make = 'Test'
      expect(subject.make).to eq('Test')
    end

    it "allows reading and writing for :year" do
      subject.year = '2001'
      expect(subject.year).to eq('2001')
    end

    it "allows reading and writing for :color" do
      subject.color = 'red'
      expect(subject.color).to eq('red')
    end
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
