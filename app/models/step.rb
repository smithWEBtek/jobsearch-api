class Step < ApplicationRecord
  has_many :tasks

  def tech_prep
    # study
    # code
    # blog
  end

  def branding    # (user.tasks.build to complete each of these fields in Users table)
    # task_elevator_pitch
    # task_resume?
    # task_twitter_url?
    # task_linkedin_url?
    # task_github_url?
    # task_learn_student_profile_url?
    # task_blog_site_url?
    # task_portfolio_site_url?
    # task_github_API_track_commits
  end

  def job_search(student)
    # research
    # network
  end

  def job_apply
    # job_instructions_task_steps_created?
    # job_instructions_tasks_completed?
    # job_org_contact_info_entered?
  end

  def job_interview
    # meet
    # interview
    # fup
  end

  def job_offer
    # job_analyze(job_data)
  end

  def job_analyze
    # profile rank (see lib/notes/notes-feature-job-fit-module.md)
  end
end
