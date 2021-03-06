# Copyright 2016 Google LLC
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


require "googleauth"

module Google
  module Cloud
    module Logging
      ##
      # # Credentials
      #
      # Represents the authentication and authorization used to connect to the
      # Stackdriver Logging API.
      #
      # @example
      #   require "google/cloud/logging"
      #
      #   keyfile = "/path/to/keyfile.json"
      #   creds = Google::Cloud::Logging::Credentials.new keyfile
      #
      #   logging = Google::Cloud::Logging.new(
      #     project_id: "my-project",
      #     credentials: creds
      #   )
      #
      #   logging.project_id #=> "my-project"
      #
      class Credentials < Google::Auth::Credentials
        SCOPE = ["https://www.googleapis.com/auth/logging.admin"].freeze
        PATH_ENV_VARS = %w[LOGGING_CREDENTIALS
                           LOGGING_KEYFILE
                           GOOGLE_CLOUD_CREDENTIALS
                           GOOGLE_CLOUD_KEYFILE
                           GCLOUD_KEYFILE].freeze
        JSON_ENV_VARS = %w[LOGGING_CREDENTIALS_JSON
                           LOGGING_KEYFILE_JSON
                           GOOGLE_CLOUD_CREDENTIALS_JSON
                           GOOGLE_CLOUD_KEYFILE_JSON
                           GCLOUD_KEYFILE_JSON].freeze
        DEFAULT_PATHS = \
          ["~/.config/gcloud/application_default_credentials.json"].freeze
      end
    end
  end
end
