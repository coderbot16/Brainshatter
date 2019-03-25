// Adapts binnie's grain recipes to include corn

recipes.remove(<extratrees:misc:9>);
recipes.addShaped("corn_grain", <extratrees:misc:9>*5, [
	[null, <simplecorn:kernels>, null],
	[<simplecorn:kernels>, <simplecorn:kernels>, <simplecorn:kernels>],
	[null, <simplecorn:kernels>, null]
]);
