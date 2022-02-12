module Mutations
  class CreatePost < BaseMutation
    # TODO: define return fields
    field :post, Types::PostType, null: false

    # TODO: define arguments
    argument :title, String, required: true
    argument :content, String, required: true
    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    # def resolve(params:)
      # def resolve(**params)
    #   post = Post.create!(params)
    #   { post: post }
    # end

    # def resolve(title: nil, content: nil)
    #   Post.create!(
    #     title: title,
    #     content: content
    #   )
    # end

    # def resolve(title:, content:)
    #   Post.create!(
    #     title: title,
    #     content: content
    #   )
    # end

    def resolve(**args)
      post = Post.create(title: args[:title], content: args[:content])
      {
        post: post,
      }
    end



  end
end
