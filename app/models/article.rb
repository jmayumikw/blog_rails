class Article < ApplicationRecord
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  # valida se o title está preenchido para poder salvar, e o tamanho mínimo e máximo
  validates :title, presence: true, length: { minimum: 6, maximum: 100}
  validates :description, presence: true, length: {minimum: 10, maximum: 1000}
end
