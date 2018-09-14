def dictionary
dictionary = {
"hello" => "hi",
"to"=> "2",
"two"=> "2", 
"too" => "2",
"for"=> "4",
"four"=> "4",
"be" => "b",
"you" =>"u",
"at" => "@" ,
"and" => "&"}
end

def word_substituter(tweet)
  dictionary
  words = tweet.split(" ")
  newtweet = []
  words.each do |x| 
    if dictionary.keys.include?(x.downcase)
      newtweet << dictionary[x.downcase]
    else
      newtweet << x
    end
  end
  newtweet.join(" ")
end

def bulk_tweet_shortener(arraytweets)
  arraytweets.each do |tweet|
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
  if word_substituter(tweet).size > 140
    word_substituter(tweet)[0..136] + "..."
  else
    word_substituter(tweet)
  end
end
    