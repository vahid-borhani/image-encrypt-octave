stage="inputtoworkspace in";
iaddress= input ("addreess aks ra vared konid ","s");
i=imread(iaddress);
[m n q]=size (i);
i=reshape (i , [1 m*n q]);
disp (["ba in aks had aksar mishavad -hasel zarb tol dar arz tasvir- " num2str(m*n) " BIT ya " num2str(m*n/8) " byte zakhire kard"])
# emkan taghir addreess aks ezafe shavad
file_addreess= input("adress fily ke bayad ramz shavad ra vared konid ","s");
file_binary= dec2bin (fread (fopen (file_addreess)),8);
binary_string= reshape (file_binary' , 1 , length (file_binary)*8 );
if (length (binary_string) > m*n )
  disp ("andaze file az tavanati zakhire kardan aks bishtar ast - yek aks ba abaad bozorgtar enthekhab konid ");
  clear
  return
  endif
rgb= input ("dar kodam rang zakhire shavad ?  1 baraye ghemez(REd) - 2 baraye sabz (GREEN) - 3 baraye abi (BLUE) ");
tedad_daste_ha= input ("tedad dasteha ra vared konid (meghdar mojaz az 2 ta 255 - ta jayi ke mitavanid az maghadir kheily kochak ya kheily bozorg estefade nakonid) ");
sath_paien=1;
sath_bala= tedad_daste_ha*floor(256/tedad_daste_ha);
fasele_daste= sath_bala/tedad_daste_ha;
shoro_az_bala= input ("meghyas shomare gozary dasteha az bala shoro shavad ya az paien ? - o baraye paien va 1 baraye bala ");
nesbat_paien= input ("avalin daste yek bashad ya sefr ? 0 ya 1 ro vared konid) ");
nesbat_daste_ha= str2num(input ("nesbat sefr be yek cheghadr bashad ? aval nesbat 0 ha bad fasele va nesbat 1 ha  mesal 1 2 ya 4 7 ya ... ","s"));
matrix_nesbat_ha=[nesbat_paien nesbat_daste_ha(nesbat_paien+1) ; abs(1-nesbat_paien) nesbat_daste_ha(abs(1-nesbat_paien)+1)]
if (shoro_az_bala == 1)
  matrix_nesbat_ha=[matrix_nesbat_ha(2,:) ; matrix_nesbat_ha(1,:)]
  endif
majmo_nesbat_ha=nesbat_daste_ha(1)+nesbat_daste_ha(2);
had_aksar_meghdar_mojaz=254-(max (matrix_nesbat_ha(:,2))*fasele_daste);
bit_count=1;
#one bit one pixel
pixel_taghir_yafte=0;
# debug(7,length(binary_string))=3;
progress=waitbar (0);
stage="khorog az inputtoworkspace";