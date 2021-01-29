# require modules here
require 'pry'
require 'yaml'

emot = YAML.load_file("lib/emoticons.yml").each_with_object({}) do |(symb,pics), final_array|
    final_array[symb.to_sym] = {:english => pics[0] , :japanese => pics[-1]}
end 

def load_library
  binding.pry
  emot = YAML.load_file("lib/emoticons.yml").each_with_object({}) do |(symb,pics), final_array|
    final_array[symb.to_sym] = {:english => pics[0] , :japanese => pics[-1]}
    binding.pry
  end
  return emot
  binding.pry
end

# p load_library

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end