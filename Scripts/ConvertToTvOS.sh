#!/bin/bash

find . -name "*.podspec" -exec sed -i '' 's/s.platform = :ios,/s.tvos.deployment_target =/g' {} +

find . -name "*.podspec" -exec sed -i '' 's/aws-amplify/RobertMietelski/g' {} +

find . -name "*.podspec" -exec sed -i '' 's/amplify-ios.git/amplify-tvos.git/g' {} +

find . -name "*.pbxproj" -exec sed -i '' 's/IPHONEOS_DEPLOYMENT_TARGET = 11.0;/TVOS_DEPLOYMENT_TARGET = 12.0; TARGETED_DEVICE_FAMILY = 3;SDKROOT = appletvos;/g' {} +

find . -name "*.pbxproj" -exec sed -i '' 's/iphoneos/appletvos/g' {} +

find . -name "*.pbxproj" -exec sed -i '' 's/\$(ARCHS_STANDARD)/x86_64/g' {} +

find . -name "*.pbxproj" -exec sed -i '' 's/armv7s/arm64/g' {} +
