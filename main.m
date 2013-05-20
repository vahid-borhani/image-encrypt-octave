inputtoworkspace
while (bit_count <= length (binary_string) )
# disp (["pixel " num2str(bit_count) " dar hal pardazesh hast"]);
bit=binary_string(bit_count)-48;
pixel=i(1,bit_count,rgb);
waitbar (bit_count/length(binary_string),progress,'dar hal ramz negari kardan ... (momken ast zaman ziadi tol bekeshad )');
# debug(5,bit_count)=bit;
# debug(1,bit_count)=pixel;
if (pixel > had_aksar_meghdar_mojaz)
had_1=sath_bala-(max(matrix_nesbat_ha(:,2))+1)*fasele_daste;
had_2=sath_bala-(max(matrix_nesbat_ha(:,2))*fasele_daste);
pixel=i(1,bit_count,rgb)=randi ([had_1 had_2]);
# debug(7,bit_count)=pixel;
endif
tabir_pixel=2;
bazeha
pardazeshpixel
# debug(4,bit_count)=tabir_pixel;
if (tabir_pixel != bit )
taghirepixel
endif
bit_count++;
endwhile
outputtouser