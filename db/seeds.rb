# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.create([{ name: 'Gravediggers', division: 'A', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=728" },
  { name: 'Dart Bags 1', division: 'A', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=434" },
  { name: 'Nomads', division: 'A', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=37" },
  { name: 'A Nightmare on Elm Street', division: 'A', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=699" },
  { name: 'Tungsten Ticklers', division: 'A', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=49" },
  { name: 'Harp Devils', division: 'A', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=764" },
  { name: 'G-Men', division: 'A', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=432" },
  { name: 'Bullseyes', division: 'A', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=32" },

  { name: 'Dart Bags 2', division: 'B1', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=313" },
  { name: 'Screaming Eagles', division: 'B1', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=789" },
  { name: 'Anger Management', division: 'B1', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=24" },
  { name: 'Balrogs', division: 'B1', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=51" },
  { name: 'All Blacks', division: 'B1', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=39" },
  { name: 'Arrows', division: 'B1', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=741" },
  { name: 'DWA', division: 'B1', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=793" },
  { name: 'DCMC', division: 'B1', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=790" },

  { name: "McMurphy's", division: 'B2', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=701" },
  { name: 'Bored Members', division: 'B2', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=766" },
  { name: 'Throwers', division: 'B2', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=41" },
  { name: 'Dart Demons', division: 'B2', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=700" },
  { name: 'Rogues and Rovers', division: 'B2', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=791" },
  { name: 'Greeks', division: 'B2', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=23" },
  { name: "Barbed Wire's", division: 'B2', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=792" },
  { name: 'Dart Vaders', division: 'B2', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=26" },

  { name: 'C Eagles', division: 'C', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=312" },
  { name: "Maysie's Crazies", division: 'C', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=673" },
  { name: 'Black Rats', division: 'C', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=31" },
  { name: 'Rails and Ales', division: 'C', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=29" },
  { name: 'Dart Tarts', division: 'C', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=103" },
  { name: 'The Focus Group', division: 'C', url: "http://www.yourleaguestats.com/darts/qsdl/team.php?id=788" }])

  Bar.create([{ name: "Eagle's Club", address: "17 Elm St", phone: "(416) 597-0242", url: "https://www.foe.com" },
    { name: 'Scotland Yard Pub', address: "56 The Esplanade", phone: "(416) 364-6572", url: "http://scotlandyardpub.ca" },
    { name: "Malone's", address: "1078 Bathurst Street", phone: "(416) 531-8064", url: "N/A" },
    { name: 'Christie Pits Pub', address: "814 Bloor St. W", phone: "(416) 535-8287", url: "http://www.christiepitspub.com" },
    { name: "Boo Radley's", address: "1482 Dupont Street", phone: "(416) 516-9992  ", url: "N/A" },
    { name: 'RCL BR 22', address: "1240 Woodbine Avenue", phone: "(416) 425-1714", url: "http://www.rcl22.com" },
    { name: 'Madison Avenue Pub', address: "14 Madison Ave", phone: "(416) 927-1722", url: "http://www.madisonavenuepub.com" },
    { name: 'Leaside Pub', address: "190 Laird Drive", phone: "(416) 467-8682", url: "http://www.leasidepub.com" },
    { name: 'Thirsty Fox Pub', address: "1028 Eglinton Ave W", phone: "(647) 347-7474", url: "http://www.thirstyfoxpub.ca" },
    { name: "Gabby's Roncesvalles", address: "157 Roncesvalles Ave", phone: "(416) 533-9000", url: "http://www.gabbys.ca/locations.php" },
    { name: 'RCL Branch 11', address: "9 Dawes Rd", phone: "(416) 699 1353", url: "http://rcl11.com" },
    { name: 'Artful Dodger', address: "10 Isabella St", phone: "(416) 964-9511", url: "http://www.theartfuldodger.ca" },
    { name: 'The Wicket', address: "1671 Bloor St W", phone: "(647) 349-6025", url: "http://www.thewicket.ca" },
    { name: 'Rails and Ales', address: "1106 Danforth Ave", phone: "(416) 462-9555", url: "http://www.railsandales.ca" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" },
    { name: '', address: "", phone: "", url: "" }])
