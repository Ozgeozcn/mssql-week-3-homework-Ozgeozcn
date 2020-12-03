 select K.kullaniciAd, M.meslek from tblKullanici K
   join tblMeslek M on K.meslekKod = M.meslekKod
   join tblSiparis S on K.kullaniciKod = S.kullaniciKod
   where siparisTarih IS NULL