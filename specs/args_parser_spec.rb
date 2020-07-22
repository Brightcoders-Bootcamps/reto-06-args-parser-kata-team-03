# frozen_string_literal : true

require File.join(File.dirname(__FILE__), 'args_parser')

describe Parser do
  Parser.new
  describe 'testing_boolean' do
    it 'Detect log in' do
      Parser.save_arguments

      expect(Parser.testing_boolean).to eq(true)
    end
  end
  describe 'testing_integer' do
    it 'Detect ports' do
      Parser.save_arguments

      expect(Parser.testing_integer).to eq(10)
    end
  end
  describe 'testing_string' do
    it 'Detect dir' do
      Parser.save_arguments

      expect(Parser.testing_string).to eq('')
    end
  end
end
