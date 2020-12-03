select U.urunAd, sum(D.adet) Adet from tblSiparis S
   join tblSiparisDetay D on D.faturaKod = S.faturaKod
   join tblUrun U on U.urunKod = D.urunKod
   where S.siparisTarih between '2007-02-01' and '2014-03-05'
   group by U.urunAd
   order by 2 desc