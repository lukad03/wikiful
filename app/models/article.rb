class Article < ActiveRecord::Base
    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article_categories

    validates :title, :content, :categories, presence: true
end
