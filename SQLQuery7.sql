  select seh.Isim, COUNT(*) from tblSiparis S
   join tblSiparisDurum SD on SD.siparisDurumKod = S.siparisDurumKod
   join tblSiparisDetay D on D.faturaKod = S.faturaKod
   join tblUrun U on U.urunKod = D.urunKod
   join tblKullanici K on S.kullaniciKod = K.kullaniciKod
   join tblSehir seh on seh.Id = K.sehir 
   where U.urunKod = '3033'
   group by seh.Isim
   order by COUNT(*) desc