require 'set'

class LostsController < ApplicationController

  def index
    @lost_items = Lost.all
  end



  def show
    # @lost_item = Lost.find(params[:id])
    def clean_description(string)
      conjunctions = ["for", "and","so", "nor", "but", "or", "yet" ]
      useless_words = ["he", "she", "him ","it", "her", "them", "my", "his", "their", "at", "it's", "on" ,"with", "like", "as", "to", "also", "then", "again" ]

      conjunctions.each do |word|
        string = string.sub(/\b#{word}\b/,'')
      end

      useless_words.each do |word|
        string = string.sub(/\b#{word}\b/,'')
      end
      return string
    end

    def word_hash(arr)
      hash = {}
      arr.each do |word|
        if hash[word]
          hash[word] += 1
        else
          hash[word] = 1
        end
      end
      return hash
    end

    def extract_word_vec(string)
      word = string.scan(/\w{2,}/)
      p word
      return word_hash(word)
    end

    def get_cosine(vec_1, vec_2)
      intersection = Set.new(vec_1.keys) & Set.new(vec_2.keys)
      numerator = 0
      intersection.each do |key|
        numerator += vec_1[key] * vec_2[key]
      end

      sum1 = 0
      vec_1.each do |key, value|
        sum1 += (value**2)
      end

      sum2 = 0
      vec_2.each do |key, value|
        sum2 += (value**2)
      end

      denominator = Math.sqrt(sum1) * Math.sqrt(sum2)

      if denominator == 0
        return 0
      else
        return numerator.to_f/denominator.to_f
      end

    end
  end

  def new
  end

  def create
    @lost_item = Lost.create(lost_params)
    redirect_to
  end

  private
  def lost_params
    params.require(:lost_item).permit(:user_id, :title,:brand, :category, :type, :color, :description, :location)
  end
end