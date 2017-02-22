def add_achievement
  Achievement.create(name: "Bob", team: "Bold", headline: "Woohoo!", description: "Oh yeah!", categories: ["Role model", "Sponsorship"], date: "2017-02-22")
end