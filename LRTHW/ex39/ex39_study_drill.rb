#coding -*- utf-8 -*-

# Bernard Pietraga
# Exercise No. 39 from Learn Ruby The Hard Way
# Third objective of exercise.
# This one has polish names in it.

województwa = {
  'DS' => 'dolnośląskie',
  'KP' => 'kujawsko-pomorskie',
  'LE' => 'lubelskie',
  'LB' => 'lubuskie',
  'ŁO' => 'łódzkie',
  'MP' => 'małopolskie',
  'MA' => 'mazowieckie',
  'OP' => 'opolskie',
  'PK' => 'podkarpackie',
  'PL' => 'podlaskie',
  'PM' => 'pomorskie',
  'SL' => 'śląskie',
  'SW' => 'świętokrzyskie',
  'WM' => 'warmińsko-mazurskie',
  'WI' => 'wielkopolskie',
  'ZP' => 'zachodniopomorskie'
}

stolice = {
  'DS' => 'Wrocław',
  'KP' => 'Bydgoszcz i Toruń',
  'LE' => 'Lublin',
  'LB' => 'Gorzów Wielkopolski i Zielona Góra',
  'ŁO' => 'Łódź',
  'MP' => 'Kraków',
  'MA' => 'Warszawa',
  'OP' => 'Opole',
  'PK' => 'Rzeszów',
  'PL' => 'Białystok',
  'PM' => 'Gdańsk',
  'SL' => 'Katowice',
  'SW' => 'Kielce',
  'WM' => 'Olsztyn',
  'WI' => 'Poznań',
  'ZP' => 'Szczecin'
}

województwa.each do |skrot, wojewodztwo|
  stolica = stolice[skrot]
  puts "Województwo #{wojewodztwo} ma skrót #{skrot}, a jego stolicą jest #{stolica}."
end
