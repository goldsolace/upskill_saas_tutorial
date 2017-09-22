module UsersHelper
  def job_title_icon
    if @user.profile.job_title == "Developer"
      "<i class='fa fa-code'></i>".html_safe
    elsif @user.profile.job_title == "Entrepreneur"
      "<i class='fa fa-lightbulb-o'></i>".html_safe
    elsif @user.profile.job_title == "Investor"
      "<i class='fa fa-dollar'></i>".html_safe
    end
  end
  
  def job_title_icon_index(title)
    @job_title = title[:title.to_sym]
    if @job_title == "Developer"
      "<i class='fa fa-code'></i>".html_safe
    elsif @job_title == "Entrepreneur"
      "<i class='fa fa-lightbulb-o'></i>".html_safe
    elsif @job_title == "Investor"
      "<i class='fa fa-dollar'></i>".html_safe
    end
  end
  
    def job_title_bg(title)
    @job_title = title[:title.to_sym]
    if @job_title == "Developer"
      "developer-bg".html_safe
    elsif @job_title == "Entrepreneur"
      "entrepreneur-bg".html_safe
    elsif @job_title == "Investor"
      "investor-bg".html_safe
    end
  end
end
