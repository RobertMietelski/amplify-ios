Pod::Spec.new do |s|

  s.name         = 'AWSPredictionsPlugin'
  s.version      = '1.0.0'
  s.summary      = 'Amazon Web Services Amplify for iOS.'

  s.description  = 'AWS Amplify for iOS provides a declarative library for application development using cloud services'

  s.homepage     = 'https://aws.amazon.com/amplify/'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { 'Amazon Web Services' => 'amazonwebservices' }
  s.source       = { :git => 'https://github.com/RobertMietelski/amplify-tvos.git', :tag => s.version}

  s.tvos.deployment_target = '13.0'
  s.swift_version = '5.0'

  AWS_SDK_VERSION = '~> 2.13.4'
  AMPLIFY_VERSION = :git => 'https://github.com/RobertMietelski/amplify-tvos.git'
  
  s.source_files = 'AmplifyPlugins/Predictions/AWSPredictionsPlugin/**/*.swift'

  s.dependency 'AWSComprehend', AWS_SDK_VERSION
  s.dependency 'AWSPluginsCore', AMPLIFY_VERSION
  s.dependency 'AWSPolly', AWS_SDK_VERSION
  s.dependency 'AWSRekognition', AWS_SDK_VERSION
  s.dependency 'AWSTextract', AWS_SDK_VERSION
  s.dependency 'AWSTranscribeStreaming', AWS_SDK_VERSION
  s.dependency 'AWSTranslate', AWS_SDK_VERSION
  s.dependency 'CoreMLPredictionsPlugin', AMPLIFY_VERSION

end
