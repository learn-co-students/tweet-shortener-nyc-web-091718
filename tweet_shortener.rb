# Write your code here.
def dictionary
hash = {
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

def word_substituter(input)
  list = input.split(" ")
  newlist = list.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  newlist.join(" ")
end

def bulk_tweet_shortener(tweets)
  new_tweets = tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.size > 140
      word_substituter(tweet)
    else
      tweet
    end
end

def shortened_tweet_truncator(tweet)
   if selective_tweet_shortener(tweet).length > 140
     tweet[0..139]
   else
     selective_tweet_shortener(tweet)
   end
end
## in shorter terms: selective_tweet_shortener(tweet).length > 140 ? tweet[0..139] : selective_tweet_shortener(tweet)
