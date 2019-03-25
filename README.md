# Brainshatter

Brainshatter is a modpack for Minecraft 1.12.2 meant to bring back the FTB MindCrack Pack for Minecraft 1.4.7 in all of its former glory. This project has been in development since summer 2018, and has finally been released to the public. In the process of creating this modpack, I have created many custom mods specifically for reviving old features from 1.4.7. These mods are:

 * Redwoods (The massive conifer forests from ExtrabiomesXL)
 * Auxiliary Biomes (Some remaining biomes from ExtrabiomesXL)
 * Simple Flax (Flax, like in RedPower2)
 * Sulfur Torches (A feature from XyCraft)
 * Quartzium (A reimagining of the decorative aspects of XyCraft)
 * Advanced Solar Materials (Sunnarium-related materials for recipes)
 
### Rationale

Brainshatter was created as a response to my general distaste for modern Minecraft modpacks. It seems that almost every pack is littered with some combination of powercreep, ridiculous grind, or downright silly progression, in order to appeal to everyone. I wanted a return to one of the golden ages of modding, 1.4.7, where none of these things were issues. Overall, the defining aspect of these packs was their focus around GregTech 2, which provided a sensible and rewarding progression system.

Unlike the more modern GregTechs, GT2 was simpler, and while it did play a huge role, it did not totally take over the game. Like many other people, I initially found GregTech to be frustrating, until I realized its benefit: as an excellent mod for progression. GregTech extends the virtually instantaneous progression of IC2, as seen in Tekkit, to a rewarding process that will likely take several months on average to complete. For those who don't want to take on GregTech, Thermal Expansion existed as a viable alternative for machine creation.

Aside from GregTech, many of the other aspects of balance were somewhat unintentional. Mods like Draconic Evolution and Avaritia simply didn't exist, and Equivalent Exchange simply wasn't in a stable state by the time the pack released. The separation of power systems initially was the result of separate mod communities, not specific design: yet it is clear that this separation yielded interesting challenges and gameplay.

Most of all, Brainshatter and related packs are a testament to how it's possible to have tons of fun with only around 100 mods. 

### Why not FTB Ultimate Reloaded?

FTB Ultimate Reloaded is an amazing pack, but the point of Brainshatter is not to directly compete with it. The difference can be seen in the name: FTB Ultimate Reloaded is a revival of FTB Ultimate, while Brainshatter is a revival of FTB MindCrack. Ultimate is a superset of MindCrack, however some of the mods in Ultimate somewhat water down the hard/expert mode feel of MindCrack. The added mods, mainly MFR, AE1, EE3, MystCraft, and PowerConverters, contribute to an experience that is still fun, but less focused around GregTech. In a way, through omitting these mods Brainshatter can be considered the closest thing to an expert mode that there is for FTB Ultimate Reloaded, with the renewed focus on GregTech 2. 

One of the other differences is that in Brainshatter, there is a focus on making custom mods to revive some of the old 1.4.7 features, as seen before. Redwoods is the best example of this, because arguably the ExtrabiomesXL trees were one of the trademark features of the 1.4.7 era - the Traverse fir trees just can't compare. More features are planned, including perhaps at some point the massive RedPower2 Rubber Trees.

### Major Config Changes (Read this before submitting a bug report)

* TechReborn is configured to operate in EU-only mode. This is by design, in fact I have poured a great deal of time into creating patches to facilitate this support. The intent is that by forcing the coexistence of separate power systems, players will create several interesting power generation systems, instead of only having to make a single generation system. Also, EU is more interesting, because it is a bit more dangerous to work with.
* Brainshatter uses IC2 Classic as opposed to IC2 Experimental in order to provide a closer experience to 1.4.7 IC2. 
* Nerfs to Thermal Expansion and Thermal Dynamics features to bring it more in line with the other mods:
  * 3x and 4x ore processing has been removed, to make the Industrial Grinder more viable.
  * Flux Capacitors have been removed because they are too cheap. Use an energy cell instead.
  * Reduce the base capacity of the Leadstone Energy Cell from 2M RF to 600K RF, so that the Redstone tier of energy cells has a similar capacity to 1.4.7 Redstone Energy Cells
    * Since there is less powercreep anyway, this balances out.
  * Caches have been severely nerfed: max 2048 items instead of 20000 items for the base tier
    * This makes barrels viable again.
* Many optimization mods are bundled by default - as a result, Brainshatter runs faster than Mindcrack, to a significant degree
* Texture animation is disabled by default due to performance reasons. If you want to, you can revert this change in the FoamFix config.
* The Twilight Forest Uncrafting table is disabled, since otherwise you could craft metal dusts into UU-Matter. Sorry.

Note: This modpack includes a bleeding-edge build of Teckle that is available on their CI/CD servers, but not on CurseForge, that is needed for CraftTweaker support. However, this is permissable due to its MIT lixense.
