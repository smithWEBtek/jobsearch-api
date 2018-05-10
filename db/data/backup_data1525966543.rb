
 
Company.create!([
  {name: "Network", city: "hometown", state: "homestate", url: "me.com", about: "about me"},
  {name: "Acme", city: "Albany", state: "NY", url: "http://www.acme.com", about: "Coyote is after you."},
  {name: "Sears", city: "Clifton", state: "NJ", url: "http://www.sears.com", about: "Everything for the home."},
  {name: "Walmart", city: "Bentonville", state: "AK", url: "http://www.walmart.com", about: "Always the low price."},
  {name: "Ace Hardware", city: "Tulsa", state: "OK", url: "http://www.acehardware.com", about: "Ace is the place for the helpful hardware mammal."},
  {name: "JB Hunt", city: "Chicago", state: "IL", url: "http://www.jbhunt.com", about: "Ship it!"},
  {name: "Pepsi Co", city: "Louisville", state: "KY", url: "http://www.pepsico.com", about: "You want Pepsi, not Coke"},
  {name: "annkissam", city: "Boston", state: "MA", url: "http://www.annkissam.com/careers", about: "Annkissam was founded in 2007 to provide innovative, affordable technology solutions for mission-driven organizations. "}
])
Contact.create!([
  {company_id: 1, fname: "Brad", lname: "Smith", title: "Owner", email: "brad@smithwebtek.com", phone: "603-494-4147", url: "http://www.smithwebtek.com", linkedin: nil, twitter: nil, about: "Web dev prepping"},
  {company_id: 1, fname: "Jerry", lname: "Seinfeld", title: "Star", email: "jerry@seinfeld.com", phone: "212-313-4234", url: "http://www.seinfeld.com", linkedin: nil, twitter: nil, about: "Not that there's anything wrong with that.."},
  {company_id: 1, fname: "Barney", lname: "Rubble", title: "Quarry Worker", email: "barney@rock.com", phone: "243-113-2441", url: "http://www.rock.com", linkedin: nil, twitter: nil, about: "Hey Fred! Are bowling or what?"},
  {company_id: 1, fname: "Fred", lname: "Flintstone", title: "Quarry Boss", email: "fred@rock.com", phone: "608-495-4887", url: "http://www.rock.com", linkedin: nil, twitter: nil, about: "Is dinner ready?"}
])
Job.create!([
  {title: "jr rails dev", url: "http://www.monster.com?job_id=1", company_id: 1, description: "rails dev needed", requirements: "rails, js, ajax", instructions: "apply online"},
  {title: "full stack dev", url: "http://www.monster.com?job_id=2", company_id: 1, description: "full stack shop", requirements: "python, js, ajax, node", instructions: "send resume, call HR"},
  {title: "rails team member", url: "http://www.monster.com?job_id=3", company_id: 1, description: "rails R us", requirements: "rails, js, ajax, ember, SQL", instructions: "apply by April 23"},
  {title: "front end dev", url: "http://www.monster.com?job_id=4", company_id: 1, description: "pretty sites wanted", requirements: "bootstrap, js, css", instructions: "apply online, send URLs of your work"},
  {title: "web dev", url: "http://www.monster.com?job_id=5", company_id: 1, description: "web dev with strong SQL skills", requirements: "wordpress, drupal, SQL Server", instructions: "email resume, NO CALLS"},
  {title: "software engineer", url: "http://www.monster.com?job_id=6", company_id: 1, description: "application dev with some web aspects", requirements: "C#, .NET, rails, js, ajax", instructions: "online technical test first"}
])
 
Step.create!([
  {name: "choose_step!", category: "choose_step!"},
  {name: "study", category: "techprep"},
  {name: "code", category: "techprep"},
  {name: "gitcommit", category: "techprep"},
  {name: "blog", category: "techprep"},
  {name: "elevator_pitch", category: "branding"},
  {name: "resume", category: "branding"},
  {name: "twitter_url", category: "branding"},
  {name: "linkedin_url", category: "branding"},
  {name: "github_url", category: "branding"},
  {name: "learn_student_profile_url", category: "branding"},
  {name: "blog_site_url", category: "branding"},
  {name: "portfolio_site_url", category: "branding"},
  {name: "git_count_commits_via_API", category: "branding"},
  {name: "research", category: "jobsearch"},
  {name: "network", category: "jobsearch"},
  {name: "apply", category: "jobsearch"},
  {name: "email", category: "jobsearch"},
  {name: "call", category: "jobsearch"},
  {name: "meeting", category: "jobsearch"},
  {name: "interview", category: "jobsearch"},
  {name: "fup", category: "jobsearch"}
])
 
User.create!([
  {name: nil, email: "ned@abc.com", password: "pointer", phone1: nil, phone2: nil, address_line1: nil, address_line2: nil, city: nil, state: nil, zip: nil, elevator_pitch: nil, resume: nil, twitter_url: nil, linkedin_url: nil, github_url: nil, learn_student_profile_url: nil, blog_site_url: nil, portfolio_site_url: nil, coach_name: nil, coach_email: nil, coach_slack: nil},
  {name: nil, email: "max@abc.com", password: "pointer", phone1: nil, phone2: nil, address_line1: nil, address_line2: nil, city: nil, state: nil, zip: nil, elevator_pitch: nil, resume: nil, twitter_url: nil, linkedin_url: nil, github_url: nil, learn_student_profile_url: nil, blog_site_url: nil, portfolio_site_url: nil, coach_name: nil, coach_email: nil, coach_slack: nil},
  {name: nil, email: "skai@abc.com", password: "pointer", phone1: nil, phone2: nil, address_line1: nil, address_line2: nil, city: nil, state: nil, zip: nil, elevator_pitch: nil, resume: nil, twitter_url: nil, linkedin_url: nil, github_url: nil, learn_student_profile_url: nil, blog_site_url: nil, portfolio_site_url: nil, coach_name: nil, coach_email: nil, coach_slack: nil},
  {name: nil, email: "kaleo@abc.com", password: "pointer", phone1: nil, phone2: nil, address_line1: nil, address_line2: nil, city: nil, state: nil, zip: nil, elevator_pitch: nil, resume: nil, twitter_url: nil, linkedin_url: nil, github_url: nil, learn_student_profile_url: nil, blog_site_url: nil, portfolio_site_url: nil, coach_name: nil, coach_email: nil, coach_slack: nil},
  {name: nil, email: "megan@abc.com", password: "pointer", phone1: nil, phone2: nil, address_line1: nil, address_line2: nil, city: nil, state: nil, zip: nil, elevator_pitch: nil, resume: nil, twitter_url: nil, linkedin_url: nil, github_url: nil, learn_student_profile_url: nil, blog_site_url: nil, portfolio_site_url: nil, coach_name: nil, coach_email: nil, coach_slack: nil},
  {name: nil, email: "tenzing@abc.com", password: "pointer", phone1: nil, phone2: nil, address_line1: nil, address_line2: nil, city: nil, state: nil, zip: nil, elevator_pitch: nil, resume: nil, twitter_url: nil, linkedin_url: nil, github_url: nil, learn_student_profile_url: nil, blog_site_url: nil, portfolio_site_url: nil, coach_name: nil, coach_email: nil, coach_slack: nil},
  {name: nil, email: "davis@abc.com", password: "pointer", phone1: nil, phone2: nil, address_line1: nil, address_line2: nil, city: nil, state: nil, zip: nil, elevator_pitch: nil, resume: nil, twitter_url: nil, linkedin_url: nil, github_url: nil, learn_student_profile_url: nil, blog_site_url: nil, portfolio_site_url: nil, coach_name: nil, coach_email: nil, coach_slack: nil},
  {name: nil, email: "cole@abc.com", password: "pointer", phone1: nil, phone2: nil, address_line1: nil, address_line2: nil, city: nil, state: nil, zip: nil, elevator_pitch: nil, resume: nil, twitter_url: nil, linkedin_url: nil, github_url: nil, learn_student_profile_url: nil, blog_site_url: nil, portfolio_site_url: nil, coach_name: nil, coach_email: nil, coach_slack: nil},
  {name: nil, email: "ted@abc.com", password: "pointer", phone1: nil, phone2: nil, address_line1: nil, address_line2: nil, city: nil, state: nil, zip: nil, elevator_pitch: nil, resume: nil, twitter_url: nil, linkedin_url: nil, github_url: nil, learn_student_profile_url: nil, blog_site_url: nil, portfolio_site_url: nil, coach_name: nil, coach_email: nil, coach_slack: nil},
  {name: nil, email: "fred@abc.com", password: "pointer", phone1: nil, phone2: nil, address_line1: nil, address_line2: nil, city: nil, state: nil, zip: nil, elevator_pitch: nil, resume: nil, twitter_url: nil, linkedin_url: nil, github_url: nil, learn_student_profile_url: nil, blog_site_url: nil, portfolio_site_url: nil, coach_name: nil, coach_email: nil, coach_slack: nil}
])
 

Task.create!([
  {user_id: 1, step_id: 2, job_id: 1, contact_id: 1, company_id: 1, due_date: "2017-03-26", description: "get on it man!", priority: 1},
  {user_id: 1, step_id: 3, job_id: 2, contact_id: 2, company_id: 1, due_date: "2017-03-26", description: "had a good phone interview", priority: 2},
  {user_id: 2, step_id: 1, job_id: 3, contact_id: 3, company_id: 1, due_date: "2017-04-15", description: "looking for PHP Guru", priority: 3},
  {user_id: 2, step_id: 4, job_id: 4, contact_id: 4, company_id: 1, due_date: "2017-04-12", description: "great Rails shop, jrs welcome", priority: 4},
  {user_id: 3, step_id: 10, job_id: 5, contact_id: 1, company_id: 1, due_date: "2017-03-30", description: "get on it man!", priority: 1},
  {user_id: 3, step_id: 16, job_id: 1, contact_id: 2, company_id: 1, due_date: "2017-05-30", description: "no data on this yet", priority: 2},
  {user_id: 4, step_id: 17, job_id: 2, contact_id: 4, company_id: 1, due_date: "2017-04-03", description: "need to find HR contact", priority: 3},
  {user_id: 4, step_id: 18, job_id: 3, contact_id: 3, company_id: 1, due_date: "2017-03-28", description: "my friend knows a guy here", priority: 1}
])

Log.create!([
  {task_id: 1, note: "Find the right contact"},
  {task_id: 1, note: "Follow up on meeting"},
  {task_id: 2, note: "Ask for referral"},
  {task_id: 2, note: "Research requirements"},
  {task_id: 3, note: "Find another contact to get in this company"},
  {task_id: 3, note: "Send thank you note."},
  {task_id: 4, note: "Do coding challenge."},
  {task_id: 4, note: "Prepare for interview."}
])