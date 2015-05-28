class TelValidator < ActiveModel::Validator
  def validate(record)

    if record.tel1.blank?
      record.errors[:tel1] << ' can\'t be blank'
    else
      tel_length = record.tel1.length
      if record.tel1.length < 2
        record.errors[:tel1] << ' is too short (minimum is 2 characters)'
      end

      if record.tel1.length > 4
        record.errors[:tel1] << ' is too long (maximum is 4 characters)'
      end

      unless record.tel1 =~ /[0-9]+/
        record.errors[:tel1] << ' is only numeric'
      end
    end

    if record.tel2.blank?
      record.errors[:tel2] << ' can\'t be blank'
    else
      tel_length += record.tel2.length
      if record.tel2.length < 2
        record.errors[:tel2] << ' is too short (minimum is 2 characters)'
      end

      if record.tel2.length > 4
        record.errors[:tel2] << ' is too long (maximum is 4 characters)'
      end

      unless record.tel2 =~ /[0-9]+/
        record.errors[:tel2] << ' is only numeric'
      end
    end

    if record.tel3.blank?
      record.errors[:tel3] << ' can\'t be blank'
    else
      tel_length += record.tel3.length
      unless record.tel3.length == 4
        record.errors[:tel3] << ' is the wrong length (should be 4 characters)'
      end

      unless record.tel3 =~ /[0-9]+/
        record.errors[:tel3] << ' is only numeric'
      end
    end

    if tel_length != 11 && tel_length != 13
      record.errors[:tel] << ' is 11 or 13 characters'
    end
  end
end