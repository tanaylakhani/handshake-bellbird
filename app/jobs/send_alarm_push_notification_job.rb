class SendAlarmPushNotificationJob < ApplicationJob
  queue_as :default

  SERVICE_URL = "https://bellbird.joinhandshake-internal.com/push".freeze
  def perform(alarm_id)
    ## Make push notification request
  end
end
