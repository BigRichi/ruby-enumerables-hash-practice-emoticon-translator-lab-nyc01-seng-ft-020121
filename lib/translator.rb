# require modules here
require 'pry'
require 'yaml'

# emot = YAML.load_file("lib/emoticons.yml").each_with_object({}) do |(symb,pics), final_array|
#     final_array[symb] = {:english => pics[0] , :japanese => pics[-1]}
# end 

# puts emot

def load_library(emot)
  YAML.load_file(emot).each_with_object({}) do |(symb,pics), final_array|
    final_array[symb] = {:english => pics[0] , :japanese => pics[-1]}
  end
end

def get_japanese_emoticon(file_path, emoticon)
  binding.pry
end

# def get_english_meaning
#   # code goes here
# end