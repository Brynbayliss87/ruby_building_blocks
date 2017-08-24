require 'spec_helper'
require './substrings'

dictionary = ['below', 'down', 'go', 'going', 'horn', 'how', 'howdy', 'it', 'i','low', 'own', 'part', 'partner', 'sit']

output = substrings("Howdy partner, sit down! How's it going?", dictionary)

describe 'substrings' do
  it 'counts each substring' do
    expect(output).to eq({'down'=>1, 'how'=>2, 'howdy'=>1, 'go'=>1, 'going'=>1, 'it'=>2, 'i'=>3, 'own'=>1, 'part'=>1, 'partner'=>1, 'sit'=>1})
  end
end
