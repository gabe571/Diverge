json.extract! review, :id, :reviewed_game, :rating, :created_at, :updated_at
json.url review_url(review, format: :json)
