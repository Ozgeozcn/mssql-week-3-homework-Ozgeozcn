select M.meslek, count(K.kullaniciKod) from tblSiparis S
   join tblKullanici K on K.kullaniciKod = S.kullaniciKod
   join tblMeslek M on K.meslekKod = M.meslekKod
   group by M.meslek