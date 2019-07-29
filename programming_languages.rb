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
      end
    end
  end
  new_hash
end
