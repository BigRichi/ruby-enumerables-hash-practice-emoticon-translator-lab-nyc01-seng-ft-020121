# require modules here
require 'pry'
require 'yaml'

def load_library(emot)
  YAML.load_file(emot).each_with_object({}) do |(symb,pics), final_array|
    final_array[symb] = {:english => pics[0] , :japanese => pics[-1]}
  end
end

def get_english_meaning(file_path, emoticon)
  emots = load_library(file_path)
  emots.each do |k,v|
    if emoticon == v[:japanese]
      return k
    end
  end
  "Sorry, that emoticon was not found"
end

def get_japanese_emoticon(file_path, emoticon)
  emots = load_library(file_path)
  emots.each do |k,v|
    if emoticon == v[:english]
      return v[:japanese]
    end
  end
  "Sorry, that emoticon was not found"
end
