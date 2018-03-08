companies = [
  {name: "Krematorium Chur", strasse: "Sandstrasse", hnr: "50",plz: "7000", ort: "Chur", tel: "+41 81 252 44 62", email: "krematorium@fbv-chur.ch"}
]

users = [
  {
    email: "STGA.Krematorium@chur.ch",
    vname: "Krematorium",
    nname: "STGA",
    company_id: 1,
    plz: "7000",
    ort: "Chur",
    tel: "+41 81 252 44 62",
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
  }
]

delopts = [
  { deloption: "Bestatter" }, 
  { deloption: "Angehörige" },
  { deloption: "Post" },
  { deloption: "Friedhöfe" }
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

defaultopt = Option.new( date: "0001-01-01", slots: 8, bdates: 10, blocktime: "22:00:00" )

if defaultopt.save
  puts "Grundeinstellungen wurden vorgenommen."
end