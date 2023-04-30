CarrierWave.configure do |config|
    config.fog_credentials = {
        provider:              'AWS',                        # required
        aws_access_key_id:     'AKIA4ANTE4BUTNKZTUVX',                        # required unless using use_iam_profile
        aws_secret_access_key: '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',                        # required unless using use_iam_profile
        region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
    }
    config.fog_directory = 'social-rails-bucket'
    config.fog_public = false
    
  end
  