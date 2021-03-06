# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module Google
  module Cloud
    # rubocop:disable LineLength

    ##
    # # Ruby Client for Cloud Video Intelligence API ([GA](https://github.com/GoogleCloudPlatform/google-cloud-ruby#versioning))
    #
    # [Cloud Video Intelligence API][Product Documentation]:
    # Cloud Video Intelligence API.
    # - [Product Documentation][]
    #
    # ## Quick Start
    # In order to use this library, you first need to go through the following
    # steps:
    #
    # 1. [Select or create a Cloud Platform project.](https://console.cloud.google.com/project)
    # 2. [Enable billing for your project.](https://cloud.google.com/billing/docs/how-to/modify-project#enable_billing_for_a_project)
    # 3. [Enable the Cloud Video Intelligence API.](https://console.cloud.google.com/apis/api/video-intelligence)
    # 4. [Setup Authentication.](https://googlecloudplatform.github.io/google-cloud-ruby/#/docs/google-cloud/master/guides/authentication)
    #
    # ### Installation
    # ```
    # $ gem install google-cloud-video_intelligence
    # ```
    #
    # ### Preview
    # #### VideoIntelligenceServiceClient
    # ```rb
    # require "google/cloud/video_intelligence"
    #
    # video_intelligence_service_client = Google::Cloud::VideoIntelligence.new
    # input_uri = "gs://demomaker/cat.mp4"
    # features_element = :LABEL_DETECTION
    # features = [features_element]
    #
    # # Register a callback during the method call.
    # operation = video_intelligence_service_client.annotate_video(input_uri: input_uri, features: features) do |op|
    #   raise op.results.message if op.error?
    #   op_results = op.results
    #   # Process the results.
    #
    #   metadata = op.metadata
    #   # Process the metadata.
    # end
    #
    # # Or use the return value to register a callback.
    # operation.on_done do |op|
    #   raise op.results.message if op.error?
    #   op_results = op.results
    #   # Process the results.
    #
    #   metadata = op.metadata
    #   # Process the metadata.
    # end
    #
    # # Manually reload the operation.
    # operation.reload!
    #
    # # Or block until the operation completes, triggering callbacks on
    # # completion.
    # operation.wait_until_done!
    # ```
    #
    # ### Next Steps
    # - Read the [Cloud Video Intelligence API Product documentation][Product Documentation]
    #   to learn more about the product and see How-to Guides.
    # - View this [repository's main README](https://github.com/GoogleCloudPlatform/google-cloud-ruby/blob/master/README.md)
    #   to see the full list of Cloud APIs that we cover.
    #
    # [Product Documentation]: https://cloud.google.com/video-intelligence
    #
    # ## Enabling Logging
    #
    # To enable logging for this library, set the logger for the underlying [gRPC](https://github.com/grpc/grpc/tree/master/src/ruby) library.
    # The logger that you set may be a Ruby stdlib [`Logger`](https://ruby-doc.org/stdlib-2.5.0/libdoc/logger/rdoc/Logger.html) as shown below,
    # or a [`Google::Cloud::Logging::Logger`](https://googlecloudplatform.github.io/google-cloud-ruby/#/docs/google-cloud-logging/latest/google/cloud/logging/logger)
    # that will write logs to [Stackdriver Logging](https://cloud.google.com/logging/). See [grpc/logconfig.rb](https://github.com/grpc/grpc/blob/master/src/ruby/lib/grpc/logconfig.rb)
    # and the gRPC [spec_helper.rb](https://github.com/grpc/grpc/blob/master/src/ruby/spec/spec_helper.rb) for additional information.
    #
    # Configuring a Ruby stdlib logger:
    #
    # ```ruby
    # require "logger"
    #
    # module MyLogger
    #   LOGGER = Logger.new $stderr, level: Logger::WARN
    #   def logger
    #     LOGGER
    #   end
    # end
    #
    # # Define a gRPC module-level logger method before grpc/logconfig.rb loads.
    # module GRPC
    #   extend MyLogger
    # end
    # ```
    #
    module VideoIntelligence
      module V1
      end
    end
  end
end