# Iterate over the hash and build a new hash that has the languages
# as keys that point to a value of a hash that describes the type and style.

def reformat_languages(languages)
  reformatted_languages_hash = Hash.new
  languages.each do |language_style, languages|
    languages.each do |language, language_type_key_val_pair|
      reformatted_languages_hash[language] ||= language_type_key_val_pair
      language_type_key_val_pair[:style] ||= []
      reformatted_languages_hash[language][:style] << language_style
    end
  end
  reformatted_languages_hash
end
