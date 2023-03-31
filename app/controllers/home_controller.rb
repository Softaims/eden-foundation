require 'roo'
require 'httparty'
require 'csv'
require 'hijri'

class HomeController < ApplicationController
  def index
    hijri_date = Hijri::Date.today
    month_name = Hijri::Date::MONTHNAMES[hijri_date.month]
    hijri_date_str = "#{hijri_date.day} #{month_name} #{hijri_date.year}"
    @hijri_current_date = hijri_date_str

    current_date = Time.now.in_time_zone('London').strftime('%d/%m')
    row_found = false
    csv = CSV.read('public/csv-files/Ramadhan-file.csv', headers: true)
    csv.each_with_index do |row, index|

      row_values = row.fields

      if row_values[1] == current_date
        row_found = true
        @suhur_end = row_values[3]
        @fajr_start = row_values[4]
        @sunrise = row_values[5]
        @zuhr_start = row_values[6]
        @asr_start = row_values[7]
        @maghrib_start = row_values[8]
        @isha_start = row_values[9]
        @fajr_end = row_values[10]
        @asr_end = row_values[11]
        @isha_end = row_values[12]
        @maghrib_end = row_values[13]
        break
      end
    end

    unless row_found
      last_row = csv[-1]
      @suhur_end = last_row[3]
      @fajr_start = last_row[4]
      @sunrise = last_row[5]
      @zuhr_start = last_row[6]
      @asr_start = last_row[7]
      @maghrib_start = last_row[8]
      @isha_start = last_row[9]
      @fajr_end = last_row[10]
      @asr_end = last_row[11]
      @isha_end = last_row[12]
      @maghrib_end = last_row[13]
    end

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

  def our_centers
    @disable_footer = true
  end

  def contact
    @disable_footer = true
  end

  def prayer_timetable
    @disable_header = true
    @disable_footer = true

    send_file(
      "#{Rails.root}/public/namaz-calendar.pdf",
      filename: "namaz-calendar.pdf",
      type: "application/pdf",
      disposition: "inline"
    )
  end
end
