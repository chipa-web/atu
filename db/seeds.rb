# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#User.destroy_all
#CountryPost.destroy_all
#Country.destroy_all
User.find_or_create_by!(email: "a@a") do |user|
  user.password = "password"
  user.password_confirmation = "password"
  user.admin = true
end

Country.find_or_create_by!(code: "JP") do |country|
  country.name = "Japan"
end

Country.find_or_create_by!(code: "US") do |country|
  country.name = "United States"
end

Country.find_or_create_by!(code: "GB") do |country|
  country.name = "United Kingdom"
end

Country.find_or_create_by!(code: "RU") do |country|
  country.name = "Russian Federation"
end

# ドイツ（DE, 276）
Country.find_or_create_by!(code: "DE") do |country|
  country.name = "Germany"
end

# 中国（CN, 156）
Country.find_or_create_by!(code: "CN") do |country|
  country.name = "China"
end

# インド（IN, 356）
Country.find_or_create_by!(code: "IN") do |country|
  country.name = "India"
end

# ブラジル（BR, 076）
Country.find_or_create_by!(code: "BR") do |country|
  country.name = "Brazil"
end

# フランス（FR, 250）
Country.find_or_create_by!(code: "FR") do |country|
  country.name = "France"
end

# イタリア（IT, 380）
Country.find_or_create_by!(code: "IT") do |country|
  country.name = "Italy"
end

# カナダ（CA, 124）
Country.find_or_create_by!(code: "CA") do |country|
  country.name = "Canada"
end

# 韓国（KR, 410）
Country.find_or_create_by!(code: "KR") do |country|
  country.name = "South Korea"
end

# メキシコ（MX, 484）
Country.find_or_create_by!(code: "MX") do |country|
  country.name = "Mexico"
end

# オーストラリア（AU, 036）
Country.find_or_create_by!(code: "AU") do |country|
  country.name = "Australia"
end

# インドネシア（ID, 360）
Country.find_or_create_by!(code: "ID") do |country|
  country.name = "Indonesia"
end

# トルコ（TR, 792）
Country.find_or_create_by!(code: "TR") do |country|
  country.name = "Turkey"
end

# サウジアラビア（SA, 682）
Country.find_or_create_by!(code: "SA") do |country|
  country.name = "Saudi Arabia"
end

# スイス（CH, 756）
Country.find_or_create_by!(code: "CH") do |country|
  country.name = "Switzerland"
end

# オランダ（NL, 528）
Country.find_or_create_by!(code: "NL") do |country|
  country.name = "Netherlands"
end

# スペイン（ES, 724）
Country.find_or_create_by!(code: "ES") do |country|
  country.name = "Spain"
end

# 南アフリカ (ZA, 710)
 Country.find_or_create_by!(code: "ZA") do |country|
   country.name = "South Africa"
 end

# エジプト (EG, 818)
 Country.find_or_create_by!(code: "EG") do |country|
   country.name = "Egypt"
 end

# アルゼンチン (AR, 032)
 Country.find_or_create_by!(code: "AR") do |country|
   country.name = "Argentina"
 end

# タイ (TH, 764)
 Country.find_or_create_by!(code: "TH") do |country|
   country.name = "Thailand"
 end

# ニュージーランド (NZ, 554)
 Country.find_or_create_by!(code: "NZ") do |country|
   country.name = "New Zealand"
 end

# ギリシャ (GR, 300)
 Country.find_or_create_by!(code: "GR") do |country|
   country.name = "Greece"
 end

# ポルトガル (PT, 620)
 Country.find_or_create_by!(code: "PT") do |country|
   country.name = "Portugal"
 end

# ノルウェー (NO, 578)
 Country.find_or_create_by!(code: "NO") do |country|
   country.name = "Norway"
 end

# スウェーデン (SE, 752)
 Country.find_or_create_by!(code: "SE") do |country|
   country.name = "Sweden"
 end

# フィンランド (FI, 246)
 Country.find_or_create_by!(code: "FI") do |country|
   country.name = "Finland"
 end