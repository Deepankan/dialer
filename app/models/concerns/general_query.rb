module GeneralQuery


 


  def get_percentage(numerator, denominator)

   	  denominator.to_f != 0.0 ? (numerator.to_f / denominator.to_f * 100.0).round(2) : 0
  end	



  def get_col_val(column) 
    eval("self.#{column}")
  end

  def get_date_format(date)
    date.strftime("#{date.day.ordinalize} %b %y")
  end
   



  def get_time_format(time)
    time.strftime("%I:%M%p")
  end
  




  def create_date_obj(year, month)
    Date.new(year, month, DATE_ACADEMIC)
  end
  
  def get_validation_params(params)
    if  params[:user][:email].present?
         message =  REGEX_EMAIL.match(params[:user][:email]).present? ? true : "Invalid Email. Please check the email"
    elsif params[:user][:phone].present?
         message =  REGX_MOBILE.match(params[:user][:phone]).present?  ? true : "Invalid Phone No. Please check the phone no"
    elsif params[:user][:e_mobile].present?
         message =  REGX_MOBILE.match(params[:user][:e_mobile]).present? ? true : "Invalid Mobile No. Please check the mobile no"
    else
      message = true 
    end


  end
end	