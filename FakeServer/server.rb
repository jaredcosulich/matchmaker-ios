require 'rubygems'
require 'sinatra'
require 'json'

get '/' do
  <<CONTENTS
  <html>
    <body>
      <b>Available paths:</b><br>
      /game/new<br>
    </body>
  </html>
CONTENTS
end

get '/game/new' do
  content_type :json

  [
    {"one" => "http => //photos.thematchinggame.com/production/315/normal?1277674705","choco" => 12,"two" => "http => //photos.thematchinggame.com/production/27/normal?1270076948","id" => 7446,"results" => {"no" => 0,"yes" => 0}},
    {"one" => "http => //photos.thematchinggame.com/production/456/normal?1280694940","choco" => 13,"two" => "http => //photos.thematchinggame.com/production/24/normal?1270076946","id" => 9757,"results" => {"no" => 0,"yes" => 0}},
    {"one" => "http => //photos.thematchinggame.com/production/502/normal?1281345962","choco" => 14,"two" => "http => //photos.thematchinggame.com/production/141/normal?1274642211","id" => 10748,"results" => {"no" => 0,"yes" => 1}},
    {"one" => "http => //photos.thematchinggame.com/production/411/normal?1279869147","choco" => 14,"two" => "http => //photos.thematchinggame.com/production/21/normal?1270076939","id" => 8728,"results" => {"no" => 3,"yes" => 3}},
    {"one" => "http => //photos.thematchinggame.com/production/487/normal?1281214514","choco" => 13,"two" => "http => //photos.thematchinggame.com/production/474/normal?1280954832","id" => 10667,"results" => {"no" => 4,"yes" => 4}},
    {"one" => "http => //photos.thematchinggame.com/production/486/normal?1281208230","choco" => 14,"two" => "http => //photos.thematchinggame.com/production/425/normal?1280129482","id" => 10738,"results" => {"no" => 1,"yes" => 1}},
    {"one" => "http => //photos.thematchinggame.com/production/366/normal?1279122945","choco" => 15,"two" => "http => //photos.thematchinggame.com/production/25/normal?1270076946","id" => 7759,"results" => {"no" => 1,"yes" => 2}},
    {"one" => "http => //photos.thematchinggame.com/production/241/normal?1276361527","choco" => 11,"two" => "http => //photos.thematchinggame.com/production/199/normal?1275625037","id" => 5655,"results" => {"no" => 22,"yes" => 31}},
    {"one" => "http => //photos.thematchinggame.com/production/388/normal?1279516717","choco" => 8,"two" => "http => //photos.thematchinggame.com/production/34/normal?1270076955","id" => 8422,"results" => {"no" => 3,"yes" => 0}},
    {"one" => "http => //photos.thematchinggame.com/production/44/normal?1270582582","choco" => 13,"two" => "http => //photos.thematchinggame.com/production/52/normal?1271651515","id" => 1587,"results" => {"no" => 43,"yes" => 221}},
    {"one" => "http => //photos.thematchinggame.com/production/437/normal?1280330651","choco" => 12,"two" => "http => //photos.thematchinggame.com/production/48/normal?1270667347","id" => 9496,"results" => {"no" => 2,"yes" => 1}},
    {"one" => "http => //photos.thematchinggame.com/production/298/normal?1277470033","choco" => 8,"two" => "http => //photos.thematchinggame.com/production/14/normal?1270076933","id" => 6372,"results" => {"no" => 3,"yes" => 2}},
    {"one" => "http => //photos.thematchinggame.com/production/451/normal?1280594727","choco" => 10,"two" => "http => //photos.thematchinggame.com/production/17/normal?1270076936","id" => 9754,"results" => {"no" => 1,"yes" => 1}},
    {"one" => "http => //photos.thematchinggame.com/production/432/normal?1280274184","choco" => 9,"two" => "http => //photos.thematchinggame.com/production/7/normal?1270076924","id" => 9163,"results" => {"no" => 3,"yes" => 9}},
    {"one" => "http => //photos.thematchinggame.com/production/481/normal?1281118227","choco" => 10,"two" => "http => //photos.thematchinggame.com/production/184/normal?1275320218","id" => 10674,"results" => {"no" => 6,"yes" => 6}},
    {"one" => "http => //photos.thematchinggame.com/production/478/normal?1280995352","choco" => 11,"two" => "http => //photos.thematchinggame.com/production/147/normal?1274836423","id" => 10705,"results" => {"no" => 4,"yes" => 4}},
    {"one" => "http => //photos.thematchinggame.com/production/419/normal?1279989710","choco" => 14,"two" => "http => //photos.thematchinggame.com/production/22/normal?1270076944","id" => 8938,"results" => {"no" => 1,"yes" => 0}},
    {"one" => "http => //photos.thematchinggame.com/production/500/normal?1281320504","choco" => 12,"two" => "http => //photos.thematchinggame.com/production/46/normal?1270659435","id" => 10716,"results" => {"no" => 1,"yes" => 1}},
    {"one" => "http => //photos.thematchinggame.com/production/188/normal?1275435403","choco" => 15,"two" => "http => //photos.thematchinggame.com/production/41/normal?1270076959","id" => 6459,"results" => {"no" => 3,"yes" => 5}},
    {"one" => "http => //photos.thematchinggame.com/production/508/normal?1281513601","choco" => 15,"two" => "http => //photos.thematchinggame.com/production/408/normal?1279856404","id" => 10719,"results" => {"no" => 0,"yes" => 4}}
  ].to_json
end