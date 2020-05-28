#
#  Be sure to run `pod spec lint AWSS3StoragePlugin.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = 'AmplifyPlugins'
  s.version      = '1.0.0'
  s.summary      = 'Amazon Web Services Amplify for iOS.'

  s.description  = 'AWS Amplify for iOS provides a declarative library for application development using cloud services'

  s.homepage     = 'https://aws.amazon.com/amplify/'
  s.license      = 'Apache License, Version 2.0'
  s.author       = { 'Amazon Web Services' => 'amazonwebservices' }
  s.source       = { :git => 'https://github.com/RobertMietelski/amplify-tvos.git', :tag => s.version}

  s.tvos.deployment_target = '12.0'
  s.swift_version = '5.0'

  s.subspec 'AWSAPIPlugin' do |ss|
    ss.source_files = 'AmplifyPlugins/API/AWSAPICategoryPlugin/**/*.swift'
    ss.dependency 'AWSPluginsCore'
    ss.dependency 'ReachabilitySwift', '~> 5.0.0'
    ss.dependency 'AppSyncRealTimeClient', "~> 1.1.0"
  end

  s.subspec 'AWSCognitoAuthPlugin' do |ss|
    ss.source_files = 'AmplifyPlugins/Auth/AWSCognitoAuthPlugin/**/*.swift'
    ss.dependency 'AWSPluginsCore'
    ss.dependency 'AWSMobileClient'
  end

  s.subspec 'AWSDataStorePlugin' do |ss|
    ss.source_files = 'AmplifyPlugins/DataStore/AWSDataStoreCategoryPlugin/**/*.swift'
    ss.dependency 'AWSPluginsCore'
    ss.dependency 'SQLite.swift', '~> 0.12.0'
  end

  s.subspec 'AWSPinpointAnalyticsPlugin' do |ss|
    ss.source_files = 'AmplifyPlugins/Analytics/AWSPinpointAnalyticsPlugin/**/*.swift'
    ss.dependency 'AWSPinpoint'
    ss.dependency 'AWSPluginsCore'
  end

  s.subspec 'AWSS3StoragePlugin' do |ss|
    ss.source_files = 'AmplifyPlugins/Storage/AWSS3StoragePlugin/**/*.swift'
    ss.dependency 'AWSPluginsCore'
    ss.dependency 'AWSS3'
  end

end
