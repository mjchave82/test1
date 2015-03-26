json.array!(@user_stories) do |user_story|
  json.extract! user_story, :id, :headline, :user, :capability, :reason, :comments, :acceptance_criteria, :size, :epic, :blocked, :priority, :status
  json.url user_story_url(user_story, format: :json)
end
