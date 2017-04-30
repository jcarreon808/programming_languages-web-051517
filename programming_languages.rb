def reformat_languages(languages)
  result_hash={}
  languages.each do |language_type, language_hash|
    language_hash.each do |language, type|
      type.each do |type_key, type_value|
        if result_hash.has_key?(language)
          result_hash[language][:style] << language_type
        else
        result_hash[language]={type_key => type_value, :style =>[language_type]}
        end
      end
    end
  end
  result_hash
end
