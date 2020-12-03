select U.urunAd, count(S.faturaKod) from tblSiparis S
   join tblSiparisDurum SD on SD.siparisDurumKod = S.siparisDurumKod
   join tblSiparisDetay D on D.faturaKod = S.faturaKod
   join tblUrun U on U.urunKod = D.urunKod
   where SD.siparisDurumKod = '10'
   group by U.urunAd