class PhoneNumbersController < ApplicationController
  def new
    @phone_number = PhoneNumber.new
  end
  def create
    @phone_number = PhoneNumber.find_or_create_by(phone_number: params[:phone_number][:phone_number])
    @phone_number.generate_pin
    @phone_number.send_pin
  end
end
