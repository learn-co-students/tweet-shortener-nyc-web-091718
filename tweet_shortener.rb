def word_substituter(tweet)
  word_substitutes = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => '4',
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }

  tweet = tweet.split

  tweet.each_with_index do |word, index|
    if word_substitutes.include?(word.downcase)
      tweet[index] = word_substitutes[word.downcase]
    end
  end
  tweet.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return "#{word_substituter(tweet)[0...140]}"
  end
  tweet
end
