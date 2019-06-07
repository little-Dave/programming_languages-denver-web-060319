require "pry"

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.map do |style, language_array|
    language_array.map do |key, value|
      value[:style] = [style]
      unless new_hash.keys.include?(key)
        new_hash[key] = value
      else
        new_hash[key][:style].push(value[:style][0])
      end
    end
  end
  new_hash
end
