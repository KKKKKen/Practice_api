module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # ひたすら一つのエンドポイントに取ってくるデータを追加していくのかな？？→Yes
    # まずはfieldの定義から始まる []は複数取得するなら
    field :posts, [Types::PostType], null: false
    def posts
      Post.all
    end

    # field :post, Type::PostType, null: false do
    #   argument :id, ID, required: true
    # end
    # def post(id:)
    #   Post.find(id)
    # end
    
    # Add root-level fields here.
    # They will be entry points for queries on your schema.


    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end
  end

  # class Types::MutationType < GraphQL::Schema::Object
  #   field :create_post, mutation: Mutations::AddPost
  # end
end
