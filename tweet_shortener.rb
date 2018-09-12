def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  split_string = tweet.split(" ")
  split_string
  output_string = ""
  split_string.collect do |elem|
    elem_name = elem.downcase
    if dictionary.keys.include? elem_name
      output_string += dictionary[elem_name] + " "
    else
      output_string += elem + " "
    end
  end
  output_string.strip
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  shortened_tweet = selective_tweet_shortener(tweet)
  if shortened_tweet.length > 140
    shortened_tweet[0..136] += "..."
  else
    shortened_tweet
  end
end
