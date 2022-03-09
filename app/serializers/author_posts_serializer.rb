class AuthorPostsSerializer < ActiveModel::Serializer
  attributes :title, :short_content
  has_many :tags
  belongs_to :author

  def short_content
    "#{object.content[0..39]}..."
  end
end
