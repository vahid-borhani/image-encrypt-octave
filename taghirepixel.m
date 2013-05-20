stage="vorod be taghir pixel";
if (floor (shomare_nesbat/matrix_nesbat_ha(1,2)) == 0)
fasele_ta_sath_moaser=matrix_nesbat_ha(1,2)-shomare_nesbat;
else
fasele_ta_sath_moaser=majmo_nesbat_ha-shomare_nesbat;
endif
had_1=(fasele_ta_sath_moaser+shomare_daste)*fasele_daste;
had_2=(fasele_ta_sath_moaser+shomare_daste+1)*fasele_daste;
i(1,bit_count,rgb)=randi ([had_1 had_2]);
# debug(6,bit_count)=i(1,bit_count,rgb);
pixel_taghir_yafte++;
stage="khorog az taghir pixel";
