OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
   provider :twitter, TWITTER[x4CZZKTMJnkYeffPhd3dRiLrW], TWITTER[qbil0ZYtUkBXazmYG90TJtnqDN6L64XEGzJraKNWyaxu8nkpqu]
end
