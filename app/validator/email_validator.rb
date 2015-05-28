class EmailValidator < ActiveModel::Validator

  VALID_REGEX = /^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/
  LENGTH = 150
  def validate(record)

    if record.email.blank?
      record.errors[:email] << ' can\'t be blank'
    else
      unless record.email.length <= LENGTH
        record.errors[:email] << " is the wrong length (should be 150 characters)"
      end
      unless record.email =~ VALID_REGEX
        record.errors[:email] << " is the wrong format"
      end
    end
  end
end