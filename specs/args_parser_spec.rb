# frozen_string_literal: true

require File.join(File.dirname(__FILE__), '../lib/args_parser')

describe Parser do
  describe '.detect_arguments' do
    context 'when -l is not reciving any value' do
      before { ARGV.replace %w[ -l -p 8080 -d /usr/logs ] } # Mocking ARGV

      it '-l does not need to receive any kind of data', 'The flag does not receive data' do
        expect(ARGV[0]).to eq('-l')
      end

      it 'and -p does not receive the correct value', 'The flag receives a correct port' do
        expect(ARGV[1]).to eq('-p')
        expect(ARGV[2]).to be_kind_of(String)
      end
  
      it '-d does not receive any value ', 'The flag -d receives the correct type of data' do
        expect(ARGV[3]).to eq('-d')
        expect(ARGV[4]).to be_kind_of(String)
      end
    end
  end

  describe '.detect_arguments' do
    context 'when -g is detected' do
      before{ ARGV.replace %w[ -g this,is,a,list -d 1,2,3,4,-5 ]}

      it 'does not receive any value or the value is not valid', 'The flag receive a string list' do
        expect(ARGV[0]).to eq('-g')
        expect(ARGV[1]).to be_kind_of(String)
      end

      it 'and -d does not receive any value, or the value is not valid', 'The flag receive a integer list' do
        expect(ARGV[2]).to eq('-d')
        expect(ARGV[3]).to be_kind_of(String)
      end
    end
  end
end
