// Fixes up Simple Corn oredict registrations.
<ore:cropCorn>.remove(<simplecorn:corn>);
<ore:cropCorn>.add(<simplecorn:corncob>);

// Note: We remove and re-add Binnie's grain here so that the "primary" seed is correctly seen as Simple Corn's
<ore:seedCorn>.remove(<extratrees:misc:9>);
<ore:seedCorn>.add(<simplecorn:kernels>);
<ore:seedCorn>.add(<extratrees:misc:9>);
