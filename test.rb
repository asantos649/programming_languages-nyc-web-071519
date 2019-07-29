languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
require 'pry'


# def find_languages(languages)
#   temp_array = languages.values
#   list_of_languages = []
#   temp_array.map {|hash|
#     hash.keys
#   }.flatten.uniq
# end

# def find_types(languages)
#   temp_array = languages.values
#   temp_array.map {|hash|
#     hash.values
#   }.flatten.uniq
#   binding.pry
# end

# def add_keys(languages)
#   temp_hash = {}
#   list_of_lang = find_languages(languages)
#   list_of_lang.each{|language|
#     temp_hash[language]= {:style => [], :type => []}
#   }
#   temp_hash
# end

# def add_style (languages, hash_of_keys)
#   styles = languages.keys
#   array_of_values = languages.values
#   counter = 0
#   while styles[counter]
#     array_of_values[counter].keys.each{|language|
#       hash_of_keys[language][:style] << styles[counter]
#     }
#     counter += 1
#   end

#   hash_of_keys

# end

# def reformat_languages(languages)
#   add_style(languages, add_keys(languages))

#   #binding.pry
# end

# puts find_types(languages)



def reformat_languages (hash)

  new_hash = {}

  hash.each do |key, value|
    value.each do |language, type|
      if new_hash[language] == nil
        new_hash[language] = type
      end
      if new_hash[language][:style]
        new_hash[language][:style].push(key)
      else
        new_hash[language][:style] = [key]
          #binding.pry
      end
    end
  end
  new_hash
end


puts reformat_languages (languages)