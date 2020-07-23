
minster_bank = Organization.create(name: 'MinsterBank')
dexterous = Organization.create(name: 'Dexterous')

user_1 = User.create(email:'user_1@test.com', password: 'password', password_confirmation: 'password', organization: minster_bank, kudos_available: 0)
user_2 = User.create(email:'user_2@test.com', password: 'password', password_confirmation: 'password', organization: minster_bank, kudos_available: 3)
user_3 = User.create(email:'user_3@test.com', password: 'password', password_confirmation: 'password', organization: minster_bank, kudos_available: 2)
user_4 = User.create(email:'user_4@test.com', password: 'password', password_confirmation: 'password', organization: dexterous, kudos_available: 1)
user_5 = User.create(email:'user_5@test.com', password: 'password', password_confirmation: 'password', organization: dexterous, kudos_available: 0)

kudo_1 = Kudo.create(reason: 'Awesomeness', message: "You're the best!!", sent_by_user_id: user_1.id, sent_to_user_id: user_2.id)
kudo_2 = Kudo.create(reason: 'Awesomeness', message: "No! You're the best!!", sent_by_user_id: user_2.id, sent_to_user_id: user_1.id)
kudo_3 = Kudo.create(reason: 'Togetherness', message: "Together we are better!!", sent_by_user_id: user_1.id, sent_to_user_id: user_2.id)
kudo_4 = Kudo.create(reason: 'Coolness', message: "You're such a cool person!!", sent_by_user_id: user_1.id, sent_to_user_id: user_2.id)