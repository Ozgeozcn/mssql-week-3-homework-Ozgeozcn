 select MAX(S.toplam) Faturatutar, U.urunAd, D.faturaKod, K.isim, K.soyad from tblSiparis S
   join tblSiparisDetay D on S.faturaKod = D.faturaKod
   join tblUrun U on D.urunKod = U.urunKod
   join tblKullanici K on K.kullaniciKod = S.kullaniciKod
   group by U.urunAd, D.faturaKod, K.isim, K.soyad
   order by Faturatutar