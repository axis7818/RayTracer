// My custom .pov file for p4

// camera
camera {
  location <0, 1, 25>
  up <0, 1, 0>
  right < 1.6, 0, 0>
  look_at <0, 0, 0>
}

// general lighting
// light_source {<-70, 100, 70> color rgb <1.5, 1.5, 1.5>}

// Star
sphere { <0, 1, 26>, 0.1
  pigment { color rgb <10, 10, 10> }
  finish { ambient 1.0 diffuse 1.0 specular 1.0 roughness 0.02 reflection 0 }
}
light_source {<0, 1, 25> color rgb <1.5, 1.5, 1.5>}

// Sun
sphere { <40, 0, 0>, 30
  pigment { color rgbf <6.0, 0.6, 0.2, 0.1>}
  finish {ambient 0.2 diffuse 0.8 specular 0.3 roughness 0.4 ior 1.8 reflection 0.05}
  translate <0, 0, 0>
}
light_source {<9, 2, 2> color rgb <1.5, 1.5, 1.5>}

// Mercury
sphere { <9, 0, 0>, 0.3
  pigment { color rgbf <0.6, 0.6, 0.6, 0.1>}
  finish {ambient 0.2 diffuse 0.5 specular 0.7 roughness 0.02 ior 1.8 reflection 0.3}
  translate <0, 0, 0>
}

// Venus
sphere { <7, 0, 0>, 0.7
  pigment { color rgbf <1, 0.6, 0.4, 0.1>}
  finish {ambient 0.2 diffuse 0.8 specular 0.3 roughness 0.4 ior 1.8 reflection 0.05}
  translate <0, 0, 0>
}

// Earth
sphere { <4.5, 0, 0>, 0.7
  pigment { color rgbf <0.2, 0.6, 0.4, 0.1>}
  finish {ambient 0.2 diffuse 0.8 specular 0.3 roughness 0.4 ior 1.8 reflection 0.05}
  translate <0, 0, 0>
}

// Mars
sphere { <2.2, 0, 0>, 0.41
  pigment { color rgbf <1.0, 0.4, 0.2, 0.1>}
  finish {ambient 0.2 diffuse 0.8 specular 0.3 roughness 0.4 ior 1.8 reflection 0.05}
  translate <0, 0, 0>
}

// Jupiter
sphere { <-1.2, 0, 0>, 2
  pigment { color rgbf <1.0, 0.2, 0.2, 0.5>}
  finish {ambient 0.4 diffuse 0.4 specular 0.3 roughness 0.4 ior 1.3 reflection 0.05}
  translate <0, 0, 0>
}
sphere { <0, 0, 0>, 1.8
  pigment { color rgb <0.8, 0.8, 0>}
  finish {ambient 0.3 diffuse 0.7 specular 0.1 roughness 0.4 }
  scale <1, 0.1, 1>
  translate <-1.2, 0, 0>
}
sphere { <0, 0, 0>, 1.3
  pigment { color rgb <0.8, 0.8, 0.4>}
  finish {ambient 0.3 diffuse 0.7 specular 0.1 roughness 0.4 }
  scale <1, 0.1, 1>
  translate <-1.2, 0.7, 0>
}
sphere { <0, 0, 0>, 1.3
  pigment { color rgb <0.8, 0.8, 0.4>}
  finish {ambient 0.3 diffuse 0.7 specular 0.1 roughness 0.4 }
  scale <1, 0.1, 1>
  translate <-1.2, -0.7, 0>
}
sphere { <0, 0, 0>, 0.5
  pigment { color rgb <0.8, 0.8, 0.4>}
  finish {ambient 0.3 diffuse 0.7 specular 0.1 roughness 0.4 }
  scale <1, 0.2, 1>
  translate <-1.2, 1.6, 0>
}
sphere { <0, 0, 0>, 0.5
  pigment { color rgb <0.8, 0.8, 0.4>}
  finish {ambient 0.3 diffuse 0.7 specular 0.1 roughness 0.4 }
  scale <1, 0.2, 1>
  translate <-1.2, -1.6, 0>
}
sphere { <0, 0, 0>, 0.5
  pigment { color rgbf <1, 1, 0.6, 0.5>}
  finish {ambient 0.5, diffuse 0.8 specular 0.1, roughness 0.4 ior 1.1 }
  scale <1, 0.5, 0.5>
  translate <-0.9, -0.7, 1.5>
}

// Saturn
sphere { <-5.8, 0, 0>, 1.6
  pigment { color rgb <1, 0.9, 0.4>}
  finish {ambient 0.2 diffuse 0.8 specular 0.7 roughness 0.02 reflection 0}
  translate <0, 0, 0>
}
sphere { <0, 0, 0>, 2.7
  pigment { color rgbf <1, 1, 1, 0.8> }
  finish { ambient 0.5 diffuse 0.5 specular 0.2 roughness 0.2 reflection 0 }
  scale <1, 0.05, 1>
  rotate <0, -25, -30>
  translate <-5.8, 0, 0>
}

// Uranus
sphere { <-10.2, 0, 0>, 1
  pigment { color rgb <0.2, 0.7, 0.9>}
  finish {ambient 0.2 diffuse 0.8 specular 0.7 roughness 0.02 reflection 0.2}
  translate <0, 0, 0>
}

// Neptune
sphere { <-13, 0, 0>, 0.5
  pigment { color rgb <0.1, 0.6, 1.0>}
  finish {ambient 0.2 diffuse 0.8 specular 0.7 roughness 0.02 reflection 0.2}
  translate <0, 0, 0>
}

// Pluto
sphere { <-15.5, 0, 0>, 0.1
  pigment { color rgb <0.7, 0.7, 0.7>}
  finish {ambient 0.2 diffuse 0.8 specular 0.7 roughness 0.02 reflection 0.2}
  translate <0, 0, 0>
}

sphere {
    <-28.1725077351, -7.04007609994, -56.0098961264>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.3582918767, -4.90914494365, -15.6697164618>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <27.8696822886, -14.2200045656, -50.0467427793>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <8.46259006542, -18.829278256, -27.7234752504>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.7928013671, 14.8913201103, -67.1258692247>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.3570968291, 27.4804443453, -69.378460744>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <15.3003974889, -9.77436340716, -66.5700501552>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.5672856916, 15.9081362717, -48.8878358542>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.63058539932, 7.78682877762, -69.1441377479>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.65686684, -2.10407757757, -35.6714519798>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.2725471455, -25.5007042083, -21.9802454511>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-11.1262950656, -3.39424179664, -17.2620260191>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.13397669043, 18.3426249617, -47.9233243988>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.5428689263, -4.76645083303, -25.5692981611>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.66463000484, -2.24122293847, -61.5764631132>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <18.3353354513, -19.7730331416, -20.1212520401>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.57752265039, -4.53962866905, -50.3956652584>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.59781459422, -22.0867649347, -56.8895351598>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-8.3340522724, -21.2377788499, -59.3451037902>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-21.3414291303, -28.5080059387, -37.8182638834>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.6287034179, 24.8556717444, -25.7016989171>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-1.57455136062, 27.4995111086, -31.811654962>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.4729457366, 25.908364064, -61.4256625591>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-10.883633287, -7.4641055382, -33.2762246421>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.55926576497, 28.1304308454, -49.8884611808>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.1147162861, 4.01331880413, -30.5703818395>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.515107185, 5.84768104188, -52.9814704868>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.62620202882, 12.3871916751, -45.6368144724>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.665889319992, 20.725102745, -55.5851593003>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.6403845025, -4.16304484101, -17.5199921459>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-9.68805343444, 23.6585517734, -41.7143538678>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.4663960551, 29.2837199239, -19.7850378959>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.3931908126, 11.2833457108, -27.2374486154>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-25.3268686849, 11.3955664066, -22.5790987187>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.33324009778, 21.0404052177, -30.9333666255>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.36555361807, 19.5186493315, -45.452995791>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.79961037086, -2.72373255193, -48.1964656046>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <5.8379054032, -19.2897633515, -56.0139155536>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.8510113515, -28.7105304253, -62.0920081085>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.991645927, -18.731661948, -30.1355243908>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-32.8698327062, 24.2776188816, -55.3746177347>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.1445073086, 15.4198825957, -40.3357618446>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.1608174654, -9.84641235322, -35.7903940681>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.8287668392, 29.6900985209, -41.9751661119>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.3162402481, 9.77378639114, -64.3701289162>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.7321429269, -23.3853891573, -48.9571116435>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.9883918384, -14.3173112964, -47.7941211692>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.69862845642, 3.66344197789, -17.7638693163>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.7898957163, 6.29321830128, -34.6041835308>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.3640720768, 27.6214459643, -53.1471790523>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.4709757025, -18.8602228387, -15.9556609578>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.81112703547, -19.3918163927, -22.3923573619>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-3.31050690669, 6.07073175751, -48.5867287577>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.899687528, -22.1513744796, -48.0645782903>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.9427616512, -8.78621228588, -23.7941261688>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <16.7636770418, 20.2026430819, -49.2381629196>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <13.4977488267, 11.0570914873, -54.7637292113>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-33.9887955412, 23.5856386971, -21.4220166119>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.7766136615, 24.8220011143, -18.4976988598>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.22135804073, -23.0500126442, -21.9852574565>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-8.8882311787, -2.75251898068, -61.0286053662>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <16.8030648109, 11.689062488, -42.6561878067>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.9685141118, -12.2552999465, -48.4892577514>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-34.4154177114, -20.7487036278, -53.9887143322>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.5016303047, -20.0564094274, -26.0679599828>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-25.8747244857, -7.45854634021, -30.2303670509>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.85521628159, -14.5460484185, -42.8972519879>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-0.87908756336, -9.35715625065, -17.7189656553>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.4728424118, 20.1717760846, -30.6739961397>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <20.376246236, 25.1216658241, -45.6581320201>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.59247184915, -3.96052933026, -19.902699003>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.8385799849, -28.4529938483, -37.940308161>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.8369132597, -22.6570846467, -58.6008360486>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-19.7470899998, 8.37583102549, -43.1589378176>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-28.3030668284, -16.9902245493, -38.9740993076>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.3590794171, 16.0570674226, -25.1876030337>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.635755253949, -20.1285490582, -47.7057860996>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <33.3412288273, -20.0037221852, -16.2575042921>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.5036112941, 8.64010593314, -46.0412822273>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-10.9530410132, 14.3529038425, -50.3799944738>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.687487287, -9.9129620707, -32.1181174628>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-0.403325408465, -8.12713229061, -61.2817344863>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.0985413494, 8.15610511529, -36.5840846683>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <18.3645471691, 24.6736113647, -40.2657479485>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-28.6872062562, -20.6892896378, -60.0052665872>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.0687305763, 28.3075718551, -53.8933722574>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.653284389, -24.9508414712, -27.045625168>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.1300430896, -13.1517630307, -64.4982221867>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-28.9720537439, -18.7847881121, -59.7564387684>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.23521431292, 0.838789054253, -48.3834012171>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.5204894948, -19.2579543466, -40.0993041205>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.0955587671, -1.47878673207, -40.2084043065>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.3851081136, 2.46306208837, -37.3824035369>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.7577029268, 26.728079413, -60.0186017828>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-10.7519112264, 23.9676402291, -50.3770605449>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.26877781964, 5.89065323184, -24.5971625563>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <27.2276601384, 4.85419652276, -43.7683814339>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.62985165162, 8.28220265637, -27.6745497833>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <29.2867653625, -1.66156129319, -47.1299889582>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <27.7871561784, 9.39751034351, -33.0147610815>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.19131480037, -20.7698972722, -35.2616146224>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.69366412566, 1.21023193728, -63.4233210303>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.1772952605, 23.0734735043, -17.9736163405>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.7304713251, 27.0569136451, -51.8841617995>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-17.5494248311, 16.2001372263, -46.3092008714>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.37242235051, 21.4108886869, -52.0631260512>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.5764939845, 20.6817929886, -18.8209418935>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.16620991603, 19.0380280352, -42.7824721604>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <18.5098054562, 5.95967870149, -41.8113098111>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-13.7041666549, -3.11076667698, -58.1273835016>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.5501671248, -0.78909123883, -45.6494112981>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.2851346152, 0.682101623547, -62.5788414894>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.2445052287, -23.1828493904, -36.2119134718>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-23.3999635683, -28.6346625066, -16.321047157>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.1576738753, 26.4073094452, -57.8308858817>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-33.2691296968, 7.07389070875, -18.2881859345>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <27.9032394331, 29.5886615211, -64.4690477273>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.3814253081, 8.05560916425, -25.149022515>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <8.76432372035, 22.699545699, -20.8105194503>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-21.819809685, 5.1840589891, -40.7209209024>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.2889735552, -26.1975968867, -15.514481841>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.5558103244, -29.8007083511, -26.0023375848>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.15356703921, -21.034997638, -45.3764591926>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <20.7382235161, -5.70990206933, -20.9637229131>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <32.6012958348, 11.6734251353, -48.7328278372>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-25.8234373623, 17.0848419885, -34.1140833081>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.0299192827, 5.74601867386, -44.5531090972>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.5850691548, 28.9358772376, -57.6175892756>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.6489843723, 1.2636221711, -45.2656319937>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.19235418912, 26.1232781448, -44.9599921656>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.654788573837, -13.0069474185, -30.0046345391>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.9213318528, 1.10700487266, -54.7032820262>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.0011938883, 10.9613305145, -56.9503485162>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.79776761948, -16.2589544366, -46.6123390485>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.9587946245, 21.5011423747, -61.9132701989>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.2373452104, 14.164030127, -55.6043460238>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.1654163194, 12.0390178479, -43.4515499932>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.3749461228, -9.10982190167, -63.2224043805>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.6393890324, 26.309935092, -23.029251262>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.6714059234, 0.72097102405, -38.7650530297>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.4347796557, -7.74525632064, -64.7578169057>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.2362815538, 11.3859345774, -23.5399484182>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.921344801855, 9.78794101703, -31.6454898383>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.80282863971, -5.0430237486, -45.989133056>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-21.0404217272, 28.0035869178, -44.9377880646>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.4274336609, -8.43635254701, -41.5775406004>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.1164423515, 19.4543169606, -55.4182528884>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.7160932992, 22.9245552382, -33.9573769406>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-0.490962044945, 8.18112941709, -61.1159220303>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.8334162707, 10.8633759103, -44.6777124622>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.31657662369, -11.158521919, -37.5764237601>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.9614456089, -19.1427951243, -20.5297447117>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-22.0158714994, 12.3794824696, -69.5425988896>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.82641300697, -4.83586563865, -37.1097711111>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-11.2607351118, 3.094501523, -45.9065872272>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <29.1657003083, -19.2425123471, -57.8718040668>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <18.0265721424, -25.3946805084, -17.2264203002>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.5789527532, 10.2229294096, -69.616833875>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.67215256994, -3.36015352675, -25.946730023>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.9162472798, -28.5922911573, -18.5597043983>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-32.7820699115, 24.6291028109, -23.5823176396>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.285160692, 1.40776192806, -33.5692714122>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.23387210773, -28.5279883063, -15.0933205077>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-9.69968668573, 4.44076413492, -20.2562841687>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-9.59673588056, 2.14834302419, -36.510216053>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-33.5666561528, -0.744135636086, -34.1747194304>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.06574992322, 12.8819578217, -67.8204735253>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.4588030605, -3.82019340342, -26.4027949941>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.3587442961, -16.8004344829, -55.3567270784>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.88166574413, 1.01070488972, -55.181925127>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.41559264716, -13.9976184803, -25.2225797569>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.8043484286, -15.2972909693, -59.493148309>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <27.3882065163, -7.12272221318, -45.1912450396>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.2657087555, 5.88072137984, -37.00245181>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.6924336811, 6.85236628205, -51.9430022108>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <27.9042603332, -4.02461407435, -29.0985200775>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.2842336998, -25.0022804895, -40.2086553077>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-15.8503375831, 11.7388860711, -67.2221177524>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.5645267379, 20.592459507, -17.6103099006>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <15.1881721102, 27.7614648949, -61.6360606477>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <27.2448960403, 12.8605711355, -26.6132899208>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.8135292285, -3.68473364051, -48.7369254531>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.342685651044, 19.943876225, -57.4185269998>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.801596776023, 0.716672732707, -65.346549703>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.0677506287, -3.28511686396, -56.9437080058>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.3888175191, -5.02805265655, -65.5109876942>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-25.8069950367, -13.3661619129, -19.5576576996>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-34.3076546792, 24.6465116177, -42.673827116>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.0916216093, -17.2268035228, -61.3102037726>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <29.6505696068, -3.03271866313, -15.6262323943>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <18.3490713147, -21.6442111312, -60.4794271887>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.1075968437, -12.8871715025, -39.1307306518>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.94383448566, -15.8252071651, -28.3164416123>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.1510179494, -2.92267503873, -31.2319459849>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.7490632406, -25.4358393671, -31.6430410175>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-28.038120292, -24.8358048414, -18.0717730695>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.2909557267, 20.6428247932, -27.6848153172>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <24.1757964984, 19.8201038619, -49.5651065151>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-13.2385420275, 10.3244983114, -57.0414948602>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.269510052542, 29.3920632363, -25.8455728137>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.6763752767, 23.5320221378, -35.2747207075>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.8067299015, 14.828395826, -15.7601133507>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.5330107712, 1.47665987101, -54.1248150513>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.0362566167, -9.57038229459, -28.5543646549>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.6763551627, -5.93127054087, -31.0067860181>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-8.38018010443, -12.9703956982, -15.5657236344>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.87307559229, 6.9034217158, -56.9139310125>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-11.5596129784, -7.16915354492, -36.1897460444>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.2868693124, -7.56066774989, -40.6403758738>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-8.53442430858, 23.6057274427, -50.0033334964>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.1639484513, 9.11390230905, -67.1171079305>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.2360584441, 4.05321910271, -22.3637408722>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.3523318698, 13.042816426, -39.6885622859>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <22.8738724421, -25.343560038, -39.4646046085>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.128522253, 27.0354378277, -64.3973222795>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.7532241376, -16.3730265107, -27.5304521565>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.8432319643, 15.1038636523, -35.7051459022>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.29660664485, -18.5883577796, -52.6867853663>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.1095530222, -22.6872188464, -31.0079538415>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.5267978784, -12.4880145051, -47.0575159655>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.2215869435, -8.72378861221, -20.4014644746>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.8682533975, 25.7747868507, -29.4016152403>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.1479135821, -25.1023268004, -54.9677850715>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.4429627989, -25.8832319291, -57.2166077038>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.43467514354, -5.90720274957, -38.3071786239>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <15.2021018161, -29.9627389023, -62.5793110119>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.4711173505, -18.4366104823, -41.6558592408>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.4820385428, -16.1181184744, -29.0612382202>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <24.8018969246, 29.3497106571, -31.9860766617>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.8845589757, -11.000241617, -63.3839912573>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.28466181522, -26.889124375, -27.4971509553>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <9.81457173514, 14.3083652551, -30.6272664922>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-22.2706629772, 16.8269363615, -29.3877408688>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <20.9065175337, -10.9653421483, -18.2673462173>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.41285935126, 29.0155329581, -15.4753618823>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.9282693826, 5.04362646096, -36.5710086459>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.23759322815, -19.6554574163, -44.5124923202>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.0342481937, 29.7675298302, -19.2686994583>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.3051643835, 29.9668594156, -15.7122841938>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.2810257101, -16.7432214501, -56.4684830209>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.7839013619, 28.2784933131, -16.6385985338>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.1983278488, 11.6089120426, -21.8077640828>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.1969490472, 8.11545193737, -33.7867523229>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.6584544103, -15.5704020049, -17.5202701911>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.4010315704, 8.92231390359, -18.0478782453>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-8.07119903179, -0.784261870104, -41.5977827831>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-10.7819567322, 22.4439828383, -63.1670976787>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.5309021804, -21.1078562471, -32.6714440142>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <27.0161409509, 8.99029884206, -37.0460834906>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.3182418751, -1.82105697724, -15.8630445702>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-34.7840107018, 14.2669945948, -37.0865818738>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.4125138537, -26.9475226465, -21.4304920095>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-3.98276467079, 0.108320781746, -68.1716572037>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.3028261261, -13.0092128393, -62.8545731714>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.754798551, -10.9547470284, -60.9233495542>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.7503810089, -8.20049630302, -19.8706783811>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-9.66698589887, 20.6181711655, -66.2933765931>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-21.1271438784, 11.9505250839, -38.8848013937>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <32.6548935124, 19.9855306394, -25.2825339649>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.7836584055, 16.3001692061, -28.6574018651>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-33.188476769, -24.3008651399, -66.7980737058>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.9135132298, -6.66117712836, -59.1630545778>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-17.6611657759, -24.843756574, -43.590496542>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.38109927727, 7.90577999142, -68.8815484867>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.1284317562, -26.9830215895, -63.4123172623>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.0092611943, -7.35890984611, -39.6389458571>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-32.3182785619, 25.9075042665, -50.3169426142>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.0689611869, 17.5321821062, -18.5920573525>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <5.48734530182, -9.64295964043, -31.5441418184>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.83619183413, -18.9625357604, -43.2750303306>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-3.38549463656, 28.1173055188, -68.9195737943>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.7617809847, -4.21790575395, -24.7152212109>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <9.39476736096, 5.78413472792, -63.6137365592>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-9.68044807516, 12.6844347766, -47.4310110678>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-23.5130943973, -26.5330295398, -46.6149503044>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-28.0863461272, 10.2129738287, -52.3355908208>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <13.2716863496, 27.8269119286, -42.5875688552>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-13.6053435033, 23.2767713963, -64.5658196061>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.6861986511, -23.9961930503, -49.9964202695>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.0834492749, -18.599009204, -31.4529468802>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-22.0086102643, -1.64133820438, -25.6663772177>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.75152308477, 10.9961702542, -59.0177184185>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.3123355107, 19.560537063, -50.8304410489>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.19805232142, 5.68038669582, -66.4956846534>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.4570819166, 18.5712150034, -32.3648214246>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-1.27730251295, 20.5609393465, -18.5370634988>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.7820574387, 29.8762135306, -68.4587289108>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.612248583, -12.8704682054, -63.1796322329>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.4826295759, -8.57958646939, -66.2740123268>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.3188720968, -1.90390931823, -42.4524065515>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.631627445, 9.5151732493, -21.6890146599>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <22.2901838866, 18.3956458729, -68.5094296525>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.1990769923, 9.06380421474, -31.3331312874>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.24246778753, 26.2790600064, -54.0255857166>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.8896827622, 23.9542983893, -16.3066862168>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.556615560214, 20.4702470699, -31.1950870444>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-1.48547231793, 16.4450653369, -29.2423437718>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.2121601468, -10.7940490912, -35.7715374063>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.19165930524, -19.6800064043, -22.6449217078>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-28.241548127, -21.3928646022, -63.0627092562>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.5042241987, 18.4562788565, -42.4187454018>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.94522633562, 11.8027636197, -36.3710155407>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-1.27333009016, -9.69306744802, -55.5155263642>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-0.761408340213, 21.1943932056, -35.0946608068>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.4647515537, 24.2010172839, -49.9638957605>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.13110101702, -16.6907978888, -24.7112913897>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.9658666681, -11.2589955801, -46.7853236031>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-25.830740201, 4.29336976416, -15.0357759134>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.22246886918, -0.677237155837, -45.9690546601>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.7223873036, 17.8974759991, -29.338186216>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-21.3158345939, -12.9286042476, -69.4024087358>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.5807455727, 23.1462218726, -54.6999087079>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <5.1503540404, 9.37121317429, -53.0727059221>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <22.0050675296, -14.9738404699, -44.9821216795>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-21.8022087571, -11.5254065221, -31.0761602533>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <8.84956521969, 1.04256305915, -68.2955508204>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <5.56275964688, -29.2579265203, -48.2322427373>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.988918417, -27.013458895, -30.6058989117>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-33.0626039956, 27.0457108437, -33.7690706164>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.0958309507, -25.931498021, -32.5453798971>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.2386608641, -23.2241080662, -34.0393327695>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.4556422402, 16.0383869028, -39.8391240647>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.9393831691, -22.0534114788, -66.7426757882>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <24.6858650432, 15.4369161023, -41.0777412462>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <15.8179719895, 6.62700780811, -45.8977584908>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <27.4987813136, -25.6546821987, -41.9976580691>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.3496193161, 22.7262900498, -34.4337681417>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.7371848891, -17.7606102102, -56.6714090315>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.5353498496, 22.1775323886, -48.3171224441>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.0147731323, 0.711151816261, -55.004062241>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <22.8556335968, -13.371189135, -55.4503131312>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.4182077842, 19.2642173029, -21.3097271399>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-19.1535418861, -23.7889208994, -59.6011279464>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <15.5244703805, 8.67710112071, -20.2779399054>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.1541700203, -7.06724745019, -31.0942049709>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.02065292884, -29.5354240162, -56.2471864793>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <8.30120170268, -6.72666726804, -64.9445862779>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.27512251153, -9.95216866686, -42.5141642758>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.1378653715, 29.6658252005, -23.0318838877>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.9108846439, -16.0508039725, -15.4721616732>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.0481348784, 23.2158263573, -22.0359170606>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.55192374113, 7.41673521988, -57.5726225185>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-10.4136253525, 9.01871369985, -27.8497668552>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.7779386514, -2.20484025308, -48.7947097064>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.9037066691, -22.8952928585, -55.0985409918>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-15.5457414174, 7.09359520352, -49.5953064109>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.6872892863, 9.62484961676, -40.9857494898>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <8.3885254692, -17.7192997623, -33.4479800804>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.9280775667, -6.78437967839, -56.9590225336>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.9417240177, 19.7745087411, -31.1474125053>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.387774333, 22.6641198273, -52.5484935189>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <15.4312839475, 25.8911048506, -23.0998092395>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <33.2111603938, 9.02284312555, -17.8771648911>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.3054440833, -17.5570905067, -56.2232180109>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-23.2516746204, -13.6465265418, -34.7141841648>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.6158123181, 7.96142666132, -54.6328232406>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.3007324002, -1.86806857157, -38.5950636388>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.722245487041, -21.6684542752, -49.9349091065>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.1196480504, 15.5094220021, -39.4819881277>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.5807553112, -13.2445084425, -44.2448610961>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-10.4794092085, 6.27903776863, -34.4943551575>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.5546588937, 25.5211579783, -25.8988135437>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.7458457226, 17.3234101301, -69.4557896618>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <20.0652888285, -26.3890724542, -67.0547340882>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <29.2745627368, 3.26951266106, -45.6970579006>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.3200464009, -5.97977986368, -47.4308411646>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.66685025933, 13.2790376714, -63.59395496>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-33.734634477, -23.7054276369, -31.4083930659>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.2908503828, -8.90159228548, -27.40880923>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.84343265548, 20.7264175581, -57.7948954668>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.77404276441, -2.92919622649, -68.7330905498>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-19.2289974797, -11.9645480201, -17.0351549105>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.93871624381, -7.65800338929, -19.9768069734>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.8410748071, -5.49773660773, -33.5616956082>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-3.40801439069, 20.9807763245, -36.7133594685>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.9439527525, -20.3399607944, -48.5095335314>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-13.2464278223, 15.3245728892, -56.6315188474>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-28.2245988038, -10.0529379487, -66.5598015108>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-13.0484262128, 25.2527736783, -19.1953714957>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-21.5318279642, -17.2414816109, -67.7588857106>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.3782289807, 6.26167559283, -30.8351952595>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.00550490021, 11.2901333303, -46.1210779991>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-13.6448920219, -5.15137609393, -17.1794194557>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.5874646561, 22.0425969272, -17.7138901143>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.85677804641, 10.1065083585, -31.3330286535>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.49549739527, -5.17469884073, -26.991378659>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.36473957247, -16.6638505417, -17.9794608653>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-28.0895118278, 2.57533494754, -57.6287615213>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.0683750332, 25.2260570904, -35.1310283056>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.4249178413, -6.11688625783, -50.0534391415>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.3903164943, 28.1236281433, -25.3327070708>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.0891513917, 19.8714500035, -54.3209251598>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.0556974436, -20.1686787647, -41.0709053876>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.5449658361, 4.50749247668, -35.6585662726>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.7713996192, -25.9567635417, -47.7066925141>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.2024502926, -14.1815055877, -28.3219635274>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.9865395166, 28.8360418898, -43.8496288436>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.4643924834, 20.491324143, -33.5690866206>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.2936339116, -7.88126676042, -63.5989207079>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-34.6045809179, -25.8449381618, -54.7629942359>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.5511510567, 25.0756182414, -58.7911372353>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.6476935927, 7.43561736053, -24.3328429809>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-17.1311151583, -13.5164148708, -20.4527057605>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.1033865632, -12.2001662881, -37.8001381832>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <32.1049134744, -15.969701292, -21.7282098139>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.4153232006, -20.0124485235, -54.3121264596>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.9224442257, -5.68261760639, -27.9116561655>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <5.27891604428, 27.6287189738, -21.8765626729>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-0.351257044033, 0.519195588977, -32.0744937261>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.41060721389, -12.4124589627, -37.6360346258>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <27.4019508378, 27.5588901157, -25.1561273503>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.8172301853, 22.0485409821, -39.5667856976>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-15.5900305578, -7.86785544147, -38.4251897143>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-10.5426033707, 13.8260714508, -47.4488816177>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.62486923589, 10.351881683, -55.5301925042>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-17.7182044802, -0.574644168219, -58.7031566186>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.1551411918, -8.40589491834, -64.7528965967>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.0255935166, -20.0444545356, -46.4761798205>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.3616774241, 16.343719296, -51.3385307987>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-25.9114118502, -14.1596642148, -50.2737623337>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.7543808683, -13.1167505592, -46.9104410734>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <33.7143001776, 9.6246179715, -25.4928879261>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-25.6353502682, -16.0679610515, -28.4724728327>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.86791279149, 3.55110595373, -50.3215488556>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <18.0629742234, 13.5301006579, -38.1325964018>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.48074302186, -21.6018483564, -28.0050796118>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.25636999982, 8.23823273754, -26.0764523525>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <22.4635634154, 10.1615305639, -30.2720848703>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.87821226539, 1.15387290236, -51.5332281869>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.7742139097, 14.5792641937, -23.3664595281>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-13.3341749024, -29.8632516563, -64.5713982499>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-1.36287446888, -19.3346276639, -55.6209455618>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-13.5782482053, -1.26245221642, -31.1250202268>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <8.39150141378, 15.8051337643, -58.8330888544>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.8487743197, -13.3956130698, -68.7152357388>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.2592982246, 4.5976343247, -43.9383063025>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <18.6728975855, -27.7651402336, -37.4196468805>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.19349341047, 1.31745235048, -15.836793103>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-9.01105782642, -16.7079141865, -53.2823040886>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <15.1806262167, -26.1914515685, -69.6977432184>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <32.4074586213, 13.8514645337, -34.609891664>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.5800227966, 15.4440478218, -25.8030594448>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.234181906, -10.1107662742, -51.8911031843>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.78630970421, -26.1781143801, -22.6532745865>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.9650534532, -19.1127575397, -62.68508009>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-32.6921113903, 26.5759142081, -20.4111238035>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.6164054182, 26.9128178318, -51.7407083856>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <33.6830582238, 1.88631385614, -58.9332255327>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <9.35176801708, -1.55204689375, -15.7906392962>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.643541729, -13.1578236852, -23.3614307134>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}
