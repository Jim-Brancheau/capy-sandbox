# frozen_string_literal: true

require_relative './page'

module LoginPageSelectors
  USERNAME_FIELD = "[data-test='username']"
  PASSWORD_FIELD = "[data-test='password']"
  LOGIN_BUTTON = "[data-test='login-button']"
  ERROR_MESSAGE_CONTAINER = "[data-test='error']"
end

class LoginPage < Page
  include LoginPageSelectors
  def enter_username(username)
    uname_field = find USERNAME_FIELD
    uname_field.send_keys username
  end

  def enter_password(password)
    pword_field = find PASSWORD_FIELD
    pword_field.send_keys password
  end

  def click_login
    login_button = find LOGIN_BUTTON
    login_button.click
  end

  def error_text
    login_button = find ERROR_MESSAGE_CONTAINER
    login_button.text
  end
end
