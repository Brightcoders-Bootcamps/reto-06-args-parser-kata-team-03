# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '../lib/args_parser')

describe Parser do 
  describe '.detect_arguments' 
    context 'when -l is not reciving any value'
    before { ARGV.replace %w[-l 90] } # Mocking ARGV

  it '', 'La bandera no recibe ningún valor'
   expect
   expect

end

#describe Parser do 
 
# let(:parser) { Parser.new }


#  describe '.detect_arguments' do
#    context 'when -l receive a value' do
#      before { ARGV.replace %w[-l 90] } # Mocking ARGV

#      it 'raises an error explaining that this arg does not receive any value' do
#        expect{ parser.detect_arguments }.to raise_error ArgumentError, 'La bandera -l no recibe ningun valor'
#      end
#    end

#    context 'when aside -l there is another flag' do
#      before { ARGV.replace %w[-l -p] }

#      it { expect { parser.detect_arguments}.not_to raise_error }
#    end
#  end

  #context 'what kind of value is -l' do
  #  before { ARGV.replace %w[-l -p] }
  #  it '-l is not a boolean' do
  #    parser = Parser.detect_arguments

  #    expect(parser.logging).to be_kind_of Boolean
  #    expect(parser.logging).to eq true

  #logging -> Boolean, true or false, default values false
  #port -> Integer, 80-0909, default values 0
  #directory -> String, default value ''
  
  
   