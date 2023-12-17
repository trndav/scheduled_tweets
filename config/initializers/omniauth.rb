# Rails.application.config.middleware.use OmniAuth::Builder do
#     provider :twitter, Rails.application.credentials.dig(:twitter, :twkey), Rails.application.credentials.dig(:twitter, :twsecret)
# end

Rails.application.config.middleware.use OmniAuth::Builder do
    provider :twitter2, ENV["twkey"], ENV["twsecret"], callback_path: '/auth/twitter2/callback', scope: "tweet.read users.read"
end