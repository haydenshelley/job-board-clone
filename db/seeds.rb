 Job.create(
   company_id: 1,
   title: "Programmer",
   description: "programs things",
   url: "https://careers.insidehighered.com/job/2956989/software-programmer/?utm_campaign=google_jobs_apply&utm_source=google_jobs_apply&utm_medium=organic",
   location: "Los Angeles, CA",
   salary_range: "100_000 - 120_000"
 )

 Job.create(
   company_id: 2,
   title: "CFO",
   description: "bosses people around",
   url: "https://jobs.cedars-sinai.edu/job/los-angeles/associate-cfo-acfo/252/35755422672?utm_campaign=google_jobs_apply&utm_source=google_jobs_apply&utm_medium=organic",
   location: "Los Angeles, CA",
   salary_range: "200_000 - 250_000"
 )

#  user = CSV.read("users.csv")
#  i = 1
#  while i < user.length
#    User.create(
#      name: user[i][1],
#      email: user[i][2],
#      password_digest: user[i][3],
#    )
#    i += 1
#  end


#  company = CSV.read("companies.csv")
#  i = 1
#  while i < company.length
#    Company.create(
#      name: company[i][1],
#      logo: company[i][2],
#      description: company[i][3]
#    )
#    i += 1
#  end

#  job = CSV.read("jobs.csv")
#  i = 1
#  while i < job.length
#    Job.create(
#      company_id: job[i][1],
#      title: job[i][2],
#      description: job[i][3],
#      url: job[i][4],
#      location: job[i][5],
#      active: job[i][6],
#      salary_range: job[i][7]
#    )
#    i += 1
#  end

