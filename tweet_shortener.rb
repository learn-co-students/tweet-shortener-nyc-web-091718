require "pry"


def dictionary
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "for" => "4",
    "four" => "4"
  }
  dictionary_hash
end

def word_substituter(tweet)
  new_tweet = []
  dictionary_words = dictionary.keys
  tweet_array = tweet.split(" ")
  tweet_array.each do |word|
    if dictionary_words.include?(word.downcase)
      new_tweet << dictionary[word.downcase] 
    else
      new_tweet << word 
    end 
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end 
end


def selective_tweet_shortener(tweet)
  if tweet.to_s.split(//).length > 140 
    word_substituter(tweet) 
  else 
    tweet 
  end 
end

def shortened_tweet_truncator(tweet)
#Write another method, shortened_tweet_truncator, that truncates the tweet to 140 characters with an ellipsis (...) if it's still too long after substitution. E.g. "Random Passage satisfies the craving for those details that ..."

  new_tweet = ""
  if tweet.to_s.split(//).length > 140 
    new_tweet = tweet[0..136].concat("...")
    new_tweet
  else
    tweet
  end 
end 
