companies = [
  {name: "Feuerbestattungsverein Chur", strasse: "Sandstrasse", hnr: "50",plz: "7000", ort: "Chur", tel: "+41 81 252 44 62", email: "krematorium@fbv-chur.ch"},
  {name: "Bestattungen Chur", strasse: "Ringstrasse", hnr: "32",plz: "7000", ort: "Chur", tel: "+41 81 123456", email: "nr1@bestattung.org"}
]

users = [
  {
    email: "planer@none.org",
    vname: "Planer",
    nname: "Imhaus",
    company_id: 1,
    plz: "7000",
    ort: "Chur",
    tel: "081",
    role: 2,
    password_digest:"$2a$10$Ig7fDIMl7H7jsIgFY10yXOQkrwVpI9.PMDnDNvqhBLlFJDKWvdZpK"
  },
  {
    email: "mcsvenster@gmail.com",
    vname: "Sven",
    nname: "Koesling",
    company_id: 1,
    plz: "7204",
    ort: "Untervaz",
    tel: "081",
    role: 2,
    password_digest:"$2a$10$Z6ZcfD54eVMADGKQIG/OxubYD5PWehaAbh3fwmVGPJDTSsRIotSRq"
  },
  {
    email: "nr1@bestattung.org",
    vname: "Bestatter",
    nname: "Nr1",
    company_id: 2,
    plz: "7000",
    ort: "Chur",
    tel: "081",
    role: 3,
    password_digest:"$2a$10$Oj.9K4qHBLtYbbRjbfO/hOjeAf1tkD8JVnsUyZIM6p3nfET2WdT9C"
  }
]

delopts = [
  { deloption: "Bestatter" }, 
  { deloption: "Angehörige" },
  { deloption: "Post" },
  { deloption: "Friedhöfe" }
]

bookings = [
  {
    company_id: 1,
    vname: "Niemand",
    nname: "Nixda",
    birthdate: "1929-12-20",
    lwohnort: "Chur",
    ddate: Time.now - 2.days,
    lsdate: Date.today + 9.hours,
    bdate: Date.today + 2.days,
    btime: nil,
    wludate: Date.today + 3.days + 14.hours,
    approved: false,
    deliveryoption_id: 1,
    created_by: "Imhaus, Planer"
  },
  {
    company_id: 1,
    vname: "Gar",
    nname: "Keiner",
    birthdate: "1931-02-13",
    lwohnort: "Chur",
    ddate: Time.now - 3.days,
    lsdate: Date.today + 10.hours,
    bdate: Date.today + 2.days,
    btime: nil,
    wludate: Date.today + 3.days + 16.hours,
    approved: false,
    deliveryoption_id: 3,
    created_by: "Imhaus, Planer"
  },
  {
    company_id: 2,
    vname: "Wirklich",
    nname: "Niemand",
    birthdate: "1935-07-18",
    lwohnort: "Chur",
    ddate: Time.now - 3.days,
    lsdate: Date.today + 10.hours,
    bdate: Date.today + 2.days,
    btime: nil,
    wludate: Date.today + 3.days + 16.hours,
    approved: false,
    deliveryoption_id: 2,
    created_by: "Imhaus, Planer"
  }
]


companies.each do |c|
  comp = Company.new(c)
  if comp.save
    puts "Firma #{comp.name} wurde angelegt."
  end
end

users.each do |u|
  user = User.new(u)
  if user.save
    puts "#{user.vname} #{user.nname} wurde angelegt."
  else
    puts "#{user.vname} #{user.nname} konnte nicht angelegt werden:"
    puts user.errors.first
  end
end

delopts.each do |o|
  dopt = Deliveryoption.new(o)
  if dopt.save
    puts "Lieferoption #{dopt.deloption} wurde angelegt."
  end
end

bookings.each do |b|
  bk = Booking.new(b)
  bk.save
end

defaultopt = Option.new( date: "0001-01-01", slots: 8, bdates: 10 )

if defaultopt.save
  puts "Grundeinstellungen wurden vorgenommen."
end