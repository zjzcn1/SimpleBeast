
#/**
# * Bu dosya CINAR projesinin bir parcasidir ve "CINAR Projesi Sozlesmesi"
# * hukumlerine tabidir. Bu dosyanin sozlesme hukumlerine aykiri kullanilmasi
# * ve herhangi bir ortama yetkisiz kopyalanmasi yasaktir.
# *
# * T.C. Cumhurbaskanligi Savunma Sanayii Baskanligi (SSB)
# *
# *
# * This file is a part of CINAR project and subjects to the conditions and
# * restrictions defined in "CINAR Project Agreement". Unauthorized use and
# * copying of this file via any medium are strictly prohibited.
# *
# * Presidency of The Republic of Turkey
# * Presidency of Defence Industries
# */

DIRS= $(dir $(wildcard */))

all:
	@+for dir in $(DIRS); do make -C $$dir $@; done

clean:
	@+for dir in $(DIRS); do make -C $$dir $@; done
