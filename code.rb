module UrlMethods
  require 'set'
  hash = Hash.new {|hash, key| hash[key] = Set.new }

  def saveUrl(user_token, url)
    return false if hash[user_token].include? url

    hash[user_token] << url

    true
  end

end

p UrlMethods.saveUrl('user-12345678', 'http://news.google.com')
p UrlMethods.saveUrl('user-12345678', 'http://news.google.com')