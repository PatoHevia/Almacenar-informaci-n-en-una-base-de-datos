# db/seeds.rb

# Películas
Movie.create(name: "Inception", synopsis: "Un ladrón que roba secretos corporativos a través de los sueños...", director: "Christopher Nolan")
Movie.create(name: "The Matrix", synopsis: "Una hacker descubre la verdadera naturaleza de la realidad...", director: "The Wachowskis")

# Series
Serie.create(name: "Breaking Bad", synopsis: "Un profesor de química se convierte en narcotraficante...", director: "Vince Gilligan")
Serie.create(name: "Stranger Things", synopsis: "Un grupo de niños descubre fenómenos sobrenaturales en su ciudad...", director: "The Duffer Brothers")

# Documentales
DocumentaryFilm.create(name: "The Last Dance", synopsis: "Documental sobre la carrera de Michael Jordan...", director: "Jason Hehir")
DocumentaryFilm.create(name: "Our Planet", synopsis: "Documental sobre la vida salvaje y los ecosistemas...", director: "Alastair Fothergill")
