require 'roo'
require 'httparty'
require 'csv'

class HomeController < ApplicationController
  def index
    # fajr_timing = []
    # zhur_timing = []
    # asr_timing = []
    # maghrib_timing = []
    # isha_timing = []

    # CSV.foreach('public/csv-files/Ramadhan-file.csv', headers: true).with_index do |row, index|
    #   next if index < 14

    #   fajr_start = row[4]
    #   zhur_start = row[6]
    #   asr_start = row[7]
    #   maghrib_start = row[8]
    #   isha_start = row[9]

    #   fajr_end = row[10]
    #   zhur_end = row[11]
    #   asr_end = row[11]
    #   maghrib_end = row[13]
    #   isha_end = row[12]

    #   @fajr_start = fajr_start
    #   @zhur_start = zhur_start
    #   @asr_start = asr_start
    #   @maghrib_start = maghrib_start
    #   @isha_start = isha_start

    #   fajr_namaz = {
    #     fajr_start: row[4],
    #     fajr_end = row[10]
    #   }

    #   fajr_timing << fajr_namaz

    #   break
    # end

    # @namaz_timings = fajr_timing
  end

  def donate
    integration_key = 'hJYxsw7HLbj40cB8udES8CDRFLhuJ8G54O6rDpUXvE6hYDrria'
    integration_password = 'o2iHSrFybYMZpmWOQMuhsXP52V4fBtpuSDshrKDSWsBY1OiN6hwd9Kb12z4j5Us5u'
    vendor_name = 'sandbox'
    auth_string = "#{integration_key}:#{integration_password}"
    pp auth_string
    auth_header_value = Base64.encode64(auth_string).gsub("\n", '')
    pp auth_header_value

    response = HTTParty.post(
      'https://pi-test.sagepay.com/api/v1/merchant-session-keys',
      verify: false,
      headers: {
        'Authorization' => "Basic #{auth_header_value}",
        'Content-Type' => 'application/json'
      },
      body: { vendorName: vendor_name }.to_json
    )

    pp response
    merchant_session_key = response['merchantSessionKey']
  end

  def donorfy
  end
end
