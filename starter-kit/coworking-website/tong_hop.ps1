# Scripts : tong_hop.ps1
# Tac gia : long binh
# Ngay tao : 11/11/2026

Write-Host "Dang tao bao cao..."

" === BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt

gc logs/member.log | sls "status=404" >> logs/tong_hop.txt
( gc logs/member.log | sls " status=500" | measure-object).count >> logs/tong_hop.txt

Write-Host "Hoan thanh!"
