# Write your code here.

def dictionary
  {
  'hello' => 'hi',
  'to' => '2',
  'too' => '2',
  'two' => '2',
  'for' => '4',
  'For' => '4',
  'four' => '4',
  'be' => 'b',
  'you' => 'u',
  'at' => '@',
  'and' => '&'
  }
end

tweet = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"

def word_substituter(tweet)
  twarry = tweet.split(' ')
  twkeys = dictionary.keys
  twvalues = dictionary.values
  twarry.each_with_index do |word, i|
    twkeys.each_with_index do |key, j|
      if word == key
        twarry[i] = twvalues[j]
      end
    end
  end
  twarry.join(' ')
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.map{|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    twarry = tweet.split(' ')
    twkeys = dictionary.keys
    twvalues = dictionary.values
    twarry.each_with_index do |word, i|
      twkeys.each_with_index do |key, j|
        if word == key
          twarry[i] = twvalues[j]
        end
      end
    end
    twarry.join(' ')
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  new_tweet = word_substituter(tweet)
  if new_tweet.length > 140
    new_tweet = new_tweet[0...136] + ' ' + '...'
  end
  new_tweet
end
