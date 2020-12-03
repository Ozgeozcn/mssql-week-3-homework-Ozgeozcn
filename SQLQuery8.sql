 select K.isim, K.soyad, COUNT(S.siparisTarih) from tblSiparis S
   join tblKullanici K on S.kullaniciKod = K.kullaniciKod
   where (isim like 'A%') and (soyad like '%ak%') 
   group by K.isim, K.soyad
   order by 3 desc