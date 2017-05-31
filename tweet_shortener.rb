# Write your code here.

def dictionary
  {
      "hello" => 'hi',
      "to" => '2',
      "two" => '2',
      "too" => '2',
      "for" => '4',
      "For" => '4',
      "four" => '4',
      'be' => 'b',
      'you' => 'u',
      'at' => '@',
      'and' => '&'
  }
end

def word_substituter(tweet)
  t_array = tweet.split(" ")
  shortened = []
  t_array.each do |word|
    if dictionary.keys.include?(word)
      shortened << dictionary[word]
    else
      shortened << word
    end
  end
  shortened.join(" ")
end

def bulk_tweet_shortener(arr)
  arr.collect do |tweet|
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
  if tweet.length > 140
    subbed_tweet = word_substituter(tweet)
    if subbed_tweet.length > 140
      subbed_tweet[0..136] + "..."
    end
  else
    tweet
  end
end
