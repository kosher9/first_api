people = Person.create([{ name: 'Mat' }, {name: 'Charles'}])
Pet.create([{ person: people[0], name: 'Roxie' }, { person: people[0], name: 'Tiger' }, { person: people[1], name: 'Otis' },{ person: people[1], name: 'Max' },{ person: people[1], name: 'Loki' }])
