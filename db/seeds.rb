AdminUser.create(email: 'admin@example.com', password: 'password')

# Old Events
Event.create(description: 'This is an old event. It happened last week. We had a greate time.', starts_at: 1.week.ago, url: 'http://www.example.com')
Event.create(description: 'This is an older event. It happened two weeks. It was a blast!', starts_at: 2.weeks.ago, url: 'http://www.example.com')
Event.create(description: 'This is an ancient event. It happened last year.', starts_at: 1.year.ago, url: 'http://www.example.com')

# Future Events
Event.create(description: 'This month we will talk about Ruby on Rails.', starts_at: 1.day.from_now, url: 'http://www.example.com')
Event.create(description: 'Next month there is a great Javascript presentation.', starts_at: 1.month.from_now, url: 'http://www.example.com')
Event.create(description: 'Eventaully there will be a talk on PHP.', starts_at: 1.year.from_now, url: 'http://www.example.com')
