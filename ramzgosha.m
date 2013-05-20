stage="inputtoworkspace in";
iaddress= input ("addreess aks ra vared konid ","s");
i=imread(iaddress);
[m n q]=size (i);
i=reshape (i , [1 m*n q]);
disp (["ba in aks had aksar mishavad -hasel zarb tol dar arz tasvir- " num2str(m*n) " BIT ya " num2str(m*n/8) " byte zakhire kard"])
# emkan taghir addreess aks ezafe shavad
file_addreess= input("mahal zikhire shodan file ra vared konid ","s");
fid=fopen (file_addreess ,"w");
tol_file_BIT=input ("chand Bit ramz goshayi shavad? ")
rgb= input ("dar kodam rang zakhire shode ?  1 baraye ghemez(RED) - 2 baraye sabz (GREEN) - 3 baraye abi (BLUE) ");
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
bit_count=1;
#one bit one pixel!
progress=waitbar(0);
stage="khorog az inputtoworkspace";
while (bit_count <= tol_file_BIT )
# disp (["pixel " num2str(bit_count) " dar hal pardazesh hast"]);
waitbar (bit_count/tol_file_BIT,progress ,'dar hal ramz goshayi ... (momken ast zaman ziadi tol bekeshad )');
pixel=i(1,bit_count,rgb);
tabir_pixel=2;
bazeha
pardazeshpixel
binary_string(1,bit_count)=num2str(tabir_pixel);
bit_count++;
endwhile
stage="start saving"
fb=reshape (binary_string , [8 length(binary_string)/8]);
fb=fb';
fwrite (fid,bin2dec(fb))
fclose (fid);
disp ("tamom shod !");
close all;