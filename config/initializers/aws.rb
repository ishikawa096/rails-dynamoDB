Aws.config.update({
      region: 'ap-northeast-1',
      credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
})

  Dynamoid.configure do |config|
      config.namespace = nil
      config.warn_on_scan = true
      config.read_capacity = 5
      config.write_capacity = 5
      config.endpoint = 'http://dynamodb:8000'
  end
