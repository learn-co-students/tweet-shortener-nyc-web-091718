# Write your code here.
def dictionary(word)
  theDict = {"hello" =>'hi', "to" => '2', "two" => '2',
  "too" => '2', "be" => 'b', "you" => 'u', "at" => '@',
  "and" => '&', "for" => '4', "For" => '4'
  }

  if theDict.has_key?(word)
    #puts "replace"
    replace = theDict[word]
    return replace
  else
    #puts "no replace"
    return word
  end
end
  

def word_substituter(tweet)
  splitTweet = tweet.split
  newTweetArr = []
  splitTweet.each do |word|
    newTweetArr.push(dictionary(word))
  end
  newTweetArr.join(" ")
end

def bulk_tweet_shortener(tweetArr)
  tweetArr.each do |tweet|
    splitTweet = tweet.split
    newTweetArr = []
    splitTweet.each do |word|
      newTweetArr.push(dictionary(word))
    end
    puts newTweetArr.join(" ")
    newTweetArr.join(" ")
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
  #puts "=============================="
  #puts "[#{tweet.length}]: " + tweet
  if tweet.length > 140
    #puts "  short"
    newTweet = word_substituter(tweet)
    #puts "[#{newTweet.length}]: " + newTweet
    if newTweet.length > 140
      #puts "  still short"
      newerTweet = newTweet[0..136] + "..."
      #puts "[#{newerTweet.length}]: " + newerTweet
      return newerTweet
    else
      return newTweet
    end
  else
    #puts "  norm"
    #puts tweet
    tweet
  end
end


#puts dictionary("hello")