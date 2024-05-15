# MSF Wearables 2

###### tags: `msf`

**Summary of the Meeting #2**
Tuesday, November 1, 2022
12:00 PM - 1:00 PM EDT


![](https://i.imgur.com/m7fqbHE.jpg)
![](https://i.imgur.com/D8kJBY1.png)
![](https://i.imgur.com/5JYHZQO.jpg)
![](https://i.imgur.com/4zyPoqH.jpg)

started this world after the last meetup, semi-outdoor brainstorming spaces for MSF / OMI working groups related to avatars (WIP) https://hyperfy.io/msf

![](https://gyazo.com/fe5c1cd80c359db9ecb06e38081ed65e.gif)

### Issac Korn, Perry Ellis International

Spoke about the 3D creation from a PLM standpoint on how the 3D file is actually used to simulate fabric properties, convey actual measurements for fit and also details on how the actual garment is created in the factory. Physics & textures mirror the real garment.

Changing the way of working from 2D to 3D mentality. Changing from regular 2D sample room to a digital pattern room. From Digital Pattern to avatar fit model to virtual stitching to simulate the garment with the actual fabric attributes and physics to simulate reality. Then you can export the photorealistic 3D asset. Able to simulate pressure maps on avatar fit models.

Designers in the process now design in 3D. Designers can add artwork. Create & edit colorways. Can reduce decision time and speed to Market and is good for the environment by reducing the calendar time for product creation by eliminating shipping of physical samples.

Place of truth is the 3D Design that generates the 3D file. Some of these files can be re-used for different metaverse activation in various virtual worlds. However in many metaverse activations, one needs to significantly modify the 3D file or completely recreate the file in blender etc for virtual worlds like Decentraland. Many times it is a complete re-work or re-doing the garment completely in blender. Metaverse activations don't care for realistic measurements for their avatars. Decentraland activations for metaverse Fashion Week were cartoonish and had to be completely recreated.


### Aditya Mani, YOLOgram

Spoke about different kind of assets required for wearables in different virtual worlds. 

Decentraland, not gender specific. Common thematic division of wearable isheadgear, upperwear, bottomwear & footwear. Decentraland mesh is very sparse. To blend with skeumorphism, the textures on the clothing

Robloxhas 2 clothing systems
1)Classic boxy avatar system
2)R15 humanoid avatar system with layered clothing.

Division of the pattern on the block like avatar system can be abstract stencil that can be
used to map 2D patterns into various worlds like decentraland etc. Body is divided into
upper and lowerpattern

Fortnite
Fairly high poly and can be photorealistic. Body is again divided intoheadgear, upperwear, bottomwear & footwear

Sandbox
A voxelated avatar system that is again divided into 4 equivalent categories namely,head,
torso, legs & feet.

### Adam Frisby, Sine Wave Ent

Avatar Clothing System. Clothing is mapped to body parts. Skin & Cloth deletion which maintains which layer goes over which one. They have 5 layers of Clothing. Layer system allows for deletion of multiple layers that is present over a body part. The deletion of the
lower meshes that are occluded by the outer layers. This improves performance. The pushing one layer of another allows layers to stretch and spread out over lower meshes. The interaction between Clothing layers allow creators to build Clothing that can interact with
each other. Creators can create materials and patterns that can be reused by other creators. Also attachments to the body parts can be added that are linked to bones of the avatar. Clothing system has a moderation system that can check for Clothing appropriateness whether caused by system error or user choice. Avatar body morphing allows custom morphs at runtime. Users can modify base mesh with custom morphs.

Layers can exist below the lowest Clothing layer:
Skin + Make up + Tattoo + Clothes
Users can upload animation systems. Creators can use the autorigger system. Linear transfer from underlying mesh to close fitting Clothing.
High heeled shoes require the heel to be modified for rigging for the ankle joint rotated.Every piece of clothing can be mapped to any of the 31 body parts.

### Nelly Tacheva, TANGRA

Taxonomy of Avatar skeleton etc from Unity. To achieve a classification of the avatar skeleton. Unity model is rigged & skinned. For humanoid model, minimum 15 bones and hierarchy should follow the structure of hips, spine, chest neck Head etc. Every basic skeleton needs to follow the same hierarchy as a specification. VRM avatars also correspond to the Unity hierarchy. Bones have a parent child relationship.