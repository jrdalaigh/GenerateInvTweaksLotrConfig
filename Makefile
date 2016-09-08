# @(#) GenerateInvTweaksLotrConfig:Makefile v1.01 (2015-09-26) / Hubert Tournier

VERSION=1.01

tarball:
	@tar czf GenerateInvTweaksLotrConfig-${VERSION}.tar.gz License Makefile ReadMe CategorizeLotrData.sh Config.sh InsertLotrDataInInvTweaksTree.sh InvTweaksTree.txt PrintLevel.sh lotr244.items minecraft.categorized

install:
	@echo "Not needed!"

uninstall:
	@echo "Not needed!"

clean:
	@rm -f InvTweaksTree-lotr.txt lotr244.categorized lotr244.uncategorized

