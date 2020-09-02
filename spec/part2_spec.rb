# frozen_string_literal: true

require_relative '../lib/ruby_intro'
describe '#hello' do
  it 'is defined' do
    expect { hello('Testing') }.not_to raise_error #::NoMethodError)
  end

  it 'The hello method returns the correct string [30 points]', points: 30 do
    expect(hello('Dan').class).to eq(String)
    expect(hello('Dan')).to eq('Hello, Dan your name has 3 characters in it.'),
                            'Incorrect results for input: "Dan"'
    expect(hello('BILL')).to eq('Hello, BILL your name has 4 characters in it.'),
                             'Incorrect results for input: "BILL"'
    expect(hello('Mr. Ilson')).to eq('Hello, Mr. Ilson your name has 9 characters in it.'),
                                  'Incorrect results for input: "Mr. Ilson"'
  end
end


describe '#starts_with_consonant?' do
  it 'is defined' do
    expect { starts_with_consonant?('d') }.not_to raise_error #::NoMethodError)
  end
  it 'classifies true cases [10 points]', points: 10 do
    expect(starts_with_consonant?('v')).to be_truthy, "'v' is a consonant"
    %w[v vest Veeee crypt].each do |string|
      expect(starts_with_consonant?(string)).to be_truthy, "Incorrect results for input: \"#{string}\""
    end
  end
  it 'classifies false cases [10 points]', points: 10 do
    expect(starts_with_consonant?('a')).to be_falsy, "'a' is not a consonant"
    %w[asdfgh Unix].each do |string|
      expect(starts_with_consonant?(string)).to be_falsy, "Incorrect results for input: \"#{string}\""
    end
  end
  it 'works on the empty string [5 points]', points: 5 do
    expect(starts_with_consonant?('')).to be_falsy
  end
  it 'works on nonletters [5 points]', points: 5 do
    expect(starts_with_consonant?('#foo')).to be_falsy
  end
end

describe '#binary_multiple_of_4?' do
  it 'is defined' do
    expect { binary_multiple_of_4?('yes') }.not_to raise_error #::NoMethodError)
  end
  it 'classifies valid binary numbers returning boolean values [10 points]', points: 1 do
    %w[1010101010100 0101010101010100 100 0 00000000].each do |string|
      expect(binary_multiple_of_4?(string)).to be(true), "Incorrect results for input: \"#{string}\""
    end
    %w[101 1000000000001 00000010 010101010].each do |string|
      expect(binary_multiple_of_4?(string)).to be(false), "Incorrect results for input: \"#{string}\""
    end
  end
  it 'rejects invalid binary numbers with true/false [5 points]', points: 1 do
    expect(binary_multiple_of_4?('a100')).to be(false), "'a100' is not a valid binary number!"
    expect(binary_multiple_of_4?('')).to be(false), 'The empty string is not a valid binary number!'
  end
end
