// My custom .pov file for p4

// camera
camera {
  location <0, 1, 25>
  up <0, 1, 0>
  right < 1.33333, 0, 0>
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
    <-20.6855512704, -12.5461587708, -45.4444986092>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.3658831045, -2.82253259923, -15.2055909549>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.3474460893, 25.8142752694, -32.3901026068>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.3495833862, -12.923997707, -18.4091797149>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <8.71236447901, 11.3473664795, -60.9103571722>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.3101519417, -8.99597684584, -58.5184903271>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.330128283, 23.4052399086, -55.2261925524>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.7684312631, 29.5973314056, -35.9312574131>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.9173178386, -6.03548563225, -56.6722700981>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-13.3243086693, -9.89369845802, -67.5729231837>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.1493214667, 8.6319041735, -67.7457016951>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.635236266, -1.53128635792, -56.1262218344>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.2745596322, 26.9174481532, -49.8858171949>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-11.4379376619, -8.70610125438, -63.064182156>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.34126919956, 15.0193804705, -46.6953073479>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.1858025609, 3.01017423905, -52.1403512522>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.5140089036, -4.36143375124, -22.6535212492>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.9745410318, 24.2575913616, -52.825912173>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.7414034215, -24.7267906639, -63.5807990453>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.88276260712, 4.81980936812, -23.6722708652>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <33.2111052495, -9.09962672314, -60.2004148646>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.2468244103, 16.9634403112, -35.5160169578>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.3272658759, 16.0524356801, -36.2297365957>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.95336661268, -16.952077229, -59.6438651367>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.1127800461, -16.9062164305, -68.6369882592>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.0962948385, -7.89538219664, -40.5419057912>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.1256470122, -16.1051578073, -21.9550479792>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-0.780688531226, 18.4883972143, -39.6856682116>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.98923844717, 20.3486319456, -15.3194216577>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.9016857328, 28.207606297, -16.8391631565>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.58154850864, -10.1500092548, -49.6349119393>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.372686694, 14.0250398842, -38.0762651433>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <22.6758992237, -5.36121916094, -56.4344187018>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.15316745993, 20.372429506, -37.7573323182>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.7839766459, -2.21187510603, -30.8005799862>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.4533697431, 9.60681870195, -48.269938229>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-17.2283831636, -13.4176592719, -46.1477987369>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.9331777369, 17.8015593742, -69.027426758>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <16.4349941941, 14.9559498439, -22.8177834122>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-10.7980344792, -22.9500611332, -36.631738414>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.63588691496, 16.6096949384, -55.0919564399>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.328917741933, 18.8560922067, -53.7986804396>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-17.4867454775, 7.59318194907, -65.5712118724>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-15.8426456021, 14.83120312, -55.198830476>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <13.4914462204, 7.72887001041, -42.4369091899>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-9.6551993883, -25.9582901458, -18.3283963872>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.9122267692, -15.2860196898, -38.5680167533>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <8.12991137288, -24.1330441084, -50.6445657762>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.84477326493, 29.5558326253, -61.1383777847>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.9604794435, -23.6428673087, -61.3509540271>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-3.05484763256, 29.3656209895, -56.1896412982>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.02926829217, -3.75368284031, -41.241459987>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.8994837643, 22.4478289349, -31.6297120595>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.55693802508, -0.480413076344, -19.7290700272>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <8.32676694192, -1.32198667703, -35.4265492107>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <32.221404637, -24.9999180401, -18.6996598874>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.35527754871, 15.4678034767, -60.2833469471>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-33.7016315246, 6.06046551961, -25.6975245702>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.19000268885, -27.934003034, -46.641204339>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.6380369225, -9.52728309774, -65.4677114433>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.7708647115, 27.7757035295, -46.5228844562>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.05458762847, 28.2156200997, -19.3167589152>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.253894687, 2.17342405783, -65.6395458867>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.3186456575, -14.9614300748, -29.2901924499>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.331538931, 20.315059805, -25.9800520239>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.6171473787, 6.85071237479, -15.7548766188>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <15.343855937, 19.0287406269, -43.7968799616>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.21032646123, -23.719732786, -41.4982554805>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.54346669161, -18.734515839, -58.7075235896>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.71482399213, 7.1614750843, -46.9463822148>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-10.8370734552, -15.1184759706, -55.3437519349>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.87225891491, -3.05100633745, -15.1812101912>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.68000672057, -2.87711955161, -35.9314632771>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.05343202781, -2.38107345532, -52.2977298198>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.7742989149, 25.8928777474, -55.0347579203>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-34.7922339106, 25.0543917674, -66.9918526882>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.01686166197, 0.324276254713, -29.6474807291>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.4262875266, 20.8955454471, -52.9087539415>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <22.6691084277, 12.9824626249, -20.0161731895>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.8720225104, -21.5755472654, -68.7772161162>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <22.1543869884, 18.1977536114, -23.6300883569>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <9.61495071363, 8.91208062392, -24.7451741449>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <20.9198624982, 11.9381925742, -66.876141502>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.2967058761, -17.7137369932, -45.4102705583>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.49807402999, 16.3961193823, -26.4027860164>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-11.9710293683, -18.4424651834, -62.1704687821>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.15862992669, -7.93045798491, -21.4555109961>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-8.07200438261, 0.764752409701, -65.8570587467>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-32.116255128, 4.63067613868, -66.9097876165>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <22.4054014387, -11.7353988917, -58.058460331>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.2373322061, -23.2394257432, -51.7404458833>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-34.9364688071, -4.36325664875, -50.0535137592>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-3.30596043436, 16.5740113184, -62.116083742>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.6695605312, 13.7477062231, -29.4266044563>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.01069136668, -20.8417859821, -43.7320387597>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.2618913411, 5.07871376184, -62.949858752>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-1.13509247701, -16.6291205284, -43.3826779654>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <5.00602106511, 21.4175102889, -25.1787840465>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-0.955367303625, -10.916990414, -32.0759207308>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-1.28793701402, 5.39493089893, -57.650524127>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <9.24856298295, -12.399872029, -27.8748900487>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.091967601, -19.7917614954, -33.7547492187>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.7996927725, -7.30415752988, -63.9970880212>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-11.3294424991, 17.9914638669, -50.2337725203>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.6089039549, 1.53083265965, -35.9871705637>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.75060282883, 3.63199498788, -33.2649923451>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.9567165923, -14.6288950734, -44.8622781143>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.8169107779, -12.99034157, -28.8040590143>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.7460133061, 17.6482498595, -57.9554474078>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.3365487049, -25.561402919, -54.6424828986>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <24.6925261702, 7.09422915063, -51.6864512053>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <16.5143650622, -27.7693613333, -46.07544999>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.8935384548, 22.3464266226, -46.1142199169>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.1922602833, 23.4813759057, -19.0793232472>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.878518356, 13.0624462085, -30.7163168394>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.6203849664, -3.38835525088, -59.4989168387>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <27.0545416283, -18.4799462592, -15.2423765652>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.1838840761, 23.4949802354, -33.4678276726>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-28.1963589241, 5.68537694119, -51.0127540247>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-1.40566497019, -6.77957170651, -49.1027480845>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.8866439799, 19.3188594157, -20.8757997173>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-0.200050368722, -2.46148563745, -54.0839958587>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.0435419533, 2.83103261593, -18.0527979837>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.9546627256, 4.28375964484, -35.5803106048>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-22.084137577, -14.1655528101, -45.1750346201>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.2025797118, 5.71296276217, -58.4102005937>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.289991021, 18.5492551383, -67.0566211126>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.7885414658, 16.6437074139, -53.1149542946>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.0156684395, 19.7992193136, -57.3177506063>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.4608150456, 17.8171015028, -50.9196822742>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.7511632685, 6.90321407075, -19.6033688592>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.6897771923, 7.78350465178, -55.0341427798>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <29.2574623316, 25.3901249978, -20.8628656676>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.2898432886, 25.5682770711, -15.1372903804>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.92124395451, -10.00047732, -53.5741932148>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.00592830437, -18.9992915164, -66.1151735652>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <24.7577262463, -4.91055311183, -28.3088366041>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-23.6379435509, 29.2065702017, -69.7579009015>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.27873698273, 27.7290886184, -42.8641255236>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.9001360473, -3.68972464764, -28.3029944485>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-9.83195412533, -7.06247448343, -18.8145906087>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.86225572642, 22.9064332871, -19.8941638169>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.0931233552, -11.4749851537, -61.5825676882>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.2792590319, -2.04135684957, -69.081882951>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-22.3678558581, -24.9692409748, -50.2796930876>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.67465161397, 6.90480526772, -18.4933857023>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.8756069726, -20.0093784872, -33.9258792544>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.5007906802, 21.9062153896, -42.3946934525>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.761739021, 24.3461230572, -45.1364918463>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.09128761048, 6.41956072158, -15.6549785401>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.18690532052, -25.3536543798, -30.4919183463>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.4288848178, -29.7609790949, -31.5826477038>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-32.410279303, 1.95256451691, -56.2751540147>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.7809997351, -8.39770170404, -15.8255631491>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.744111578, -19.4710512879, -60.6012747844>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.23720139341, -29.8795855689, -63.6885827724>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.76959305244, 15.4739609408, -59.2863953706>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.894981316, 9.92724084263, -34.5588949381>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-10.8640407916, 5.69954211772, -57.8300348284>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.8359716694, 25.5249292655, -68.1386147935>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-33.4649565772, 18.3139088658, -28.4656077254>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.03832745439, 0.945130789367, -53.5881737598>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <27.9150200648, 3.99501386361, -30.7351328629>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-32.5338361552, -7.00370303371, -31.8310437234>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.3495344124, -23.4603270034, -51.99253681>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-34.1453291067, 25.4265537738, -51.2881969367>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.1510579242, 18.5565195543, -48.2491234222>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <24.3363727261, -26.3624841739, -52.3145122774>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.4021270158, -10.285758154, -25.8498345082>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.21677700537, -16.6383279028, -38.7088037047>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <5.1399549594, -6.33048361258, -31.0874502838>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.990988571, 14.5852824002, -68.6163325682>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <32.1329722522, -3.14765723348, -43.6466668828>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.04323732711, 18.091311402, -45.1356293259>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <5.4296142902, -20.5069737815, -33.6389183718>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-1.3690919104, 16.6929516475, -40.4079380503>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.8325005788, 7.3300597794, -68.7658377064>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.6800410048, 17.6837653665, -34.7285360861>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-19.0774440343, 17.2415884119, -49.4399541085>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.3158284103, 20.4318726735, -15.8918555199>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.9658359917, -23.455480632, -64.8407700686>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.72018245, 21.3817859891, -67.7242843913>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.6293787229, 25.445874454, -56.5169344825>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.80634708292, -29.7180050399, -48.6049175304>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.76312781916, 20.3874194466, -65.6937358368>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.5805939651, 23.1785123438, -59.5687625477>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.426064033, 3.79097041996, -59.0206708252>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.6525085973, -0.999441681649, -58.3354503264>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.8239273838, -18.0180028869, -42.5993383373>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <19.916805238, -24.6986537682, -41.1348901616>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.7807508852, 19.8415015194, -43.6656516881>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <9.41490706471, -10.3082272369, -64.1145564233>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <5.06510498666, -26.8455094407, -46.9639796175>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <20.6461304754, 23.1502697527, -33.9755018227>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-9.15352272288, 4.74541927985, -50.7568260917>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-9.16843781475, -0.307677638036, -17.3985493576>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-13.0049651295, -2.2459994705, -16.3265568052>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.56690097909, -10.2236458837, -65.3876555393>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.2910402751, 21.2150909946, -33.7834422876>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.5055054617, 22.6574058253, -37.0344793095>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <33.9204861737, -2.4684133764, -61.7366854846>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.4807452825, 9.12041271559, -22.5015443535>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <5.15789149489, 17.4829061966, -51.2950060808>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.6735835339, 27.2774554463, -49.1068999124>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.06053369, -28.3069208821, -43.9378472493>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.15994921901, -15.7055293937, -35.4776052951>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-15.8059561362, -3.13024984657, -17.7463160048>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-19.1530954226, 28.0184023491, -64.0267800582>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-10.0270585659, -26.8470132987, -43.5140206777>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.01024476314, 0.613109154358, -34.6969320919>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <15.8865065824, -18.2864233712, -65.0255604583>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.6876697745, 25.5377732016, -18.9353566421>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.778893777, 17.9734805407, -67.8697943591>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-17.6142869985, -12.8838875395, -55.0423263969>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <16.4136032376, -0.114467785686, -16.0743002116>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.1560029984, 22.9029852742, -51.5490753817>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.8356858348, -22.0610846128, -30.6779529051>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-32.7651827192, 3.75398995672, -57.764686834>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-28.035047773, 1.23561050498, -47.4035972829>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.40827281668, 4.31282172294, -69.8455779623>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-33.5482496727, 18.4400571369, -20.5928602433>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.6263358606, 27.7639815946, -53.7475715841>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.59989968271, -13.5731661945, -44.0521755735>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <24.3977393427, 1.99229646932, -27.0364500989>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-28.6836284865, -6.09496452966, -48.3815458321>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.0968918108, -8.46800701592, -38.0134250479>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-22.352555111, -0.0401677439833, -32.180344993>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.8008651864, -9.38018328239, -69.7051743777>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.03252525939, -6.00068228267, -40.6656521433>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.5103397284, 11.6985104329, -55.6799186592>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <29.635536534, 19.6898803182, -48.3199191845>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <15.3021843825, 15.8800459181, -34.9147303415>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.9853430717, -19.439480023, -28.1273781465>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.7386153327, 20.7800073605, -28.8517015004>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.078811674, -3.10940875473, -47.1059638212>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.1184022343, 11.6835851809, -23.4251170607>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.7873407805, -2.3625948885, -44.5736904125>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.04262971162, -13.3158244222, -64.4918117696>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <33.8945217066, -6.49135326396, -26.2057158328>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.2563200664, 15.5050395443, -53.6845781482>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.9931992331, -20.6093321215, -63.6770673962>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.8953126704, 14.0079327181, -43.2653084306>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <29.1768446498, -17.6230989294, -52.6459220836>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <20.4299386706, -17.6563068194, -53.3074178484>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.2515422279, -9.96474849352, -44.3029176785>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.4138236664, 23.735778458, -51.6968416356>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <29.6628390324, 29.3363833596, -64.3377290225>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-0.142399465759, -14.2232813922, -58.3691611487>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.7310996137, 22.2435471617, -20.8133747653>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <16.0914026251, -15.9901395194, -66.6032911746>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.2378628972, -29.3997147828, -49.3361312923>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.0963065063, -10.0382106367, -53.6954910318>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.9072556322, -8.25337920354, -42.5981141312>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.44675073851, 29.9726729616, -56.2923155632>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <33.9562485781, -11.5171029692, -17.2188729265>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.0403269892, 17.0659903399, -15.2878223251>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.16074786431, -9.5792988176, -36.7238376874>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <20.0863369687, 10.4305858036, -25.4736536519>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.74671853285, 2.67050513979, -55.8950383128>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.0836163438, -26.738912143, -31.6009784577>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.0475713973, 10.8432644568, -40.631930382>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-9.14931024259, -13.9236216473, -35.2307454988>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.0096402376, -26.732006427, -29.0295135641>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.0419344388, -2.38180891879, -46.1489157474>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.88348983678, -10.0072589417, -37.302784374>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.8822831057, 27.0636779151, -15.5982096765>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <22.3575950074, 13.9814661222, -26.579569484>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.5887134208, -3.72564391257, -39.7910187438>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.3071439471, -26.8246059632, -24.7300330906>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.6907990167, -14.747658043, -54.3007308018>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.59361310484, -4.1904902144, -30.3203734318>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <24.4865639365, -14.4355559488, -39.7560643218>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <29.5202157765, 19.1148361431, -56.6245400281>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.3447271432, -6.43768295788, -17.0806917518>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <13.6617359318, -17.8202231821, -25.9849853835>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.0073835803, 1.99101738389, -31.5357190306>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.8778159262, 16.1849254539, -66.8381212786>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.95625193625, -9.53302577508, -47.5922520424>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.3081786615, -28.8283037393, -65.9851219105>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-11.3827322487, 22.3238285111, -45.8719940377>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.06272171064, -22.4459661655, -18.1975609307>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.27884900624, 12.8372570027, -46.0172814491>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.9694274936, -23.5151473398, -32.5757720016>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <17.6885742562, -22.2491864225, -27.853447865>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.0283133812, -26.9329602373, -17.6557322732>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <16.4201973825, 20.3790228672, -48.93243362>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.9430203805, -21.5648430094, -21.0979888065>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.29851780217, -19.852327609, -24.2357243573>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.75923123558, 16.2460408682, -47.985922024>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.3103028918, -9.04120903449, -16.6542577203>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.482745041268, 9.23900596535, -63.0779063033>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.3333449128, 25.9946502206, -46.0768189361>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.3081686942, 19.5461043345, -57.2159394923>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.64482598316, -10.7858716026, -58.7594246442>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.4164323035, -4.74730492185, -37.0842091832>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.1887574486, 17.7663539324, -44.965382273>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-7.69554190428, -16.6052262012, -51.9679298323>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.7438898759, 8.4690089751, -50.4413770379>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.6178145717, -0.317694532413, -39.817101341>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-33.7954354172, -4.29329171131, -30.8597682869>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <20.6928958673, -12.3743860748, -54.4806348577>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <7.05796268565, 7.67087835127, -37.7236504501>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.0412441822, 5.38096960891, -26.5485008571>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-34.1154911011, -11.7853676202, -66.6402222851>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.7475481007, -22.4283273829, -48.5801159577>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.10323361283, -26.9301477626, -60.7439135077>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.900595445993, -12.9095407967, -47.6332213752>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-13.0222842758, -14.7954259129, -57.6328338283>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <22.3766089824, -17.1638850818, -57.9404608867>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <20.334838488, 25.04738429, -27.2235536467>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.82834349816, -27.5841324174, -41.649173832>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.8421489523, 27.9357897081, -57.4588091798>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-33.5266602263, -5.29673084427, -56.0810742314>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.5895686864, -4.75170707994, -30.0991022135>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-1.6441723963, 29.9836675233, -33.8725101527>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.24566254166, -23.3119192466, -43.1086241541>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.2860173221, -0.245121583492, -55.6788899941>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.5055672567, 11.4295944996, -36.1358347013>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.5310806989, -29.3801651852, -50.7916531628>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-25.1425721103, -11.7760697259, -43.2681826213>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.3683783512, -8.82185692296, -48.6797302593>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.181386003, -7.35125314136, -69.5266298824>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.09775518, 26.535661694, -69.0212489126>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <34.9188712443, -24.1600127769, -41.5247265947>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.65574380777, -28.0808084921, -58.6929983261>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.53366881524, 25.6920292929, -29.8058670113>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <23.2178014241, -7.05575782793, -56.5094589294>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.932830088, -0.528245378125, -30.769250118>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.752798258, 12.1312503474, -17.3968866865>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-12.8851256268, 14.9176737925, -39.6224034783>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <9.23806895575, -27.0106831976, -34.2105449632>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <12.5381666081, -25.8069393964, -23.7383079009>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-17.6400777459, 23.3583356727, -18.1173803055>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.3021984147, 0.465848372539, -17.3157171416>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.19990600031, -25.1537187586, -15.2374746096>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-34.1215533886, -26.2349876884, -56.7753420548>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.5481960631, 4.94365592839, -31.5567210598>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.7160927989, 26.9715078849, -65.2900069816>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.117038166, 22.2736892643, -56.4212109455>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <29.5536661814, 13.9179316072, -28.8339951766>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <16.5157013694, 23.7769811816, -27.3121373679>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.8231438135, -15.485172518, -15.7082703989>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <33.1695245957, -3.85062023692, -65.2649056076>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-0.249975898474, 18.6820207806, -35.8643548867>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-1.03475579963, 5.2986033076, -57.3513899242>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.23633067246, 18.5067179678, -62.6912104637>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.5696932851, -13.2536780782, -57.4942886103>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <28.2597764036, 5.15029421349, -64.5537294775>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <20.1129241025, -10.9154984184, -26.7286993609>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.5668835103, 13.4628061204, -25.9703628605>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <8.54906234885, -19.6475190072, -44.5410234914>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.3425845148, -24.4778018065, -22.5695021605>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.06284043392, 5.27768096328, -48.1398111873>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-23.2960507491, 18.8978328266, -57.2215855508>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.30555773141, 11.1919835058, -19.9025481002>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.1465129086, 11.837493227, -36.5135421253>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-32.4116670201, -3.96139227146, -50.2565417901>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.00117381928, -16.0102100113, -22.4953347987>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <14.109087524, 19.1521473035, -27.3744176032>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-21.4748008756, 26.3879614641, -41.9335605157>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.80125123413, 5.43509265652, -53.2646607779>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-21.3768235292, -25.937026098, -59.1488471579>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-31.9671303492, -4.11373930474, -34.6214492851>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.9194894816, -16.4383982668, -29.0870687825>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.00502486763, -18.4724883072, -53.161969587>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <20.1998511305, 19.3735584154, -58.7363260413>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <9.27118556437, 15.7170527842, -36.9255959238>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.3372645515, 29.2365797078, -26.3313555547>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.9391049571, 16.2174257106, -30.5677752858>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.4480348605, 26.1042903411, -45.7355040896>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <29.869503582, 6.21906912382, -30.5747201297>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.8011277862, 22.1615320686, -67.8742187991>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <24.8545612751, -4.42467561025, -65.4902125583>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <31.2595711585, 20.6111617815, -22.4766883292>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.0407990634, -11.203287959, -58.9054189751>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.1741540125, 8.47899289355, -48.4408681519>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.7432240613, -7.56853277318, -28.0828644726>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.4244235757, -8.66755640832, -16.3045419343>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-24.880923496, 26.0241208068, -25.3173317884>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.01510609931, 10.7298902029, -19.6232830567>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <16.8293411624, 11.1590934952, -41.2223355399>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-21.2462232007, 22.3671318227, -26.1816033556>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.5286602598, 8.30808864437, -42.3717612304>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.26765555069, -26.868483176, -49.4906979885>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-30.7711662966, 16.1658166775, -19.3523536734>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.463679126, -9.17913710809, -32.44703432>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.36293495552, -18.430652349, -24.6725191364>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.6905560678, -12.9476588189, -43.0578857014>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.2178744556, 7.4348770597, -68.1406966984>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.10135622344, 0.918288334544, -25.8178474207>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-22.6384753755, -5.19432916328, -23.9004985105>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-6.81037733871, 26.0099581809, -47.6701748922>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-14.2341695773, -12.1053173986, -31.3740561934>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.5867056887, 28.1296372067, -37.7798726288>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-3.4695313406, -17.8868160128, -60.4087076278>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <13.240168553, -13.5848784335, -69.3009999645>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.90494134944, 29.1089493636, -55.2893179264>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <3.33767505203, 20.7855294437, -39.0294908997>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-10.4483787968, -12.5975257749, -33.010805175>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-9.2141134598, -6.58231790634, -52.1885975131>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.7006440324, 27.3828145136, -45.4751726713>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.9297809662, 26.1976921636, -38.5772643905>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-16.7347861242, -9.97053829233, -54.8044973644>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <22.2723494939, 9.40210390183, -18.3844341726>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-0.259517090356, -23.0957245021, -49.5224295266>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-0.912267650802, -3.72334674992, -66.7071676591>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-34.4236942168, 27.3366707178, -16.9190204228>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <29.39873362, -26.1087295665, -58.4003201429>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-11.3539481502, -4.43477705844, -46.0520944431>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.899833791478, 5.87262985326, -63.1983550933>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <24.6731726837, -14.2170136418, -35.0890509027>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-34.9858610926, -3.12873262038, -45.4243854917>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.9970511385, -1.42362297722, -48.2420140948>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.1051253218, -2.31681208904, -50.911204228>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.208541889, -18.3825703785, -58.8889081179>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <4.37494882806, 21.2972100319, -26.2743173152>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-8.30613419445, 16.3544259391, -27.6995544358>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-5.90653269879, 0.203592391426, -66.5050547527>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-28.4796585318, 11.3485192449, -54.232377521>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <2.29640764595, 24.8423220994, -18.9883790342>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <9.94179497369, 27.0510140016, -45.9542752029>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-26.4281837355, -28.7016151502, -33.5903480614>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-8.63623718674, -3.00095895755, -24.3228590812>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <6.05020557237, 18.3281209285, -43.3684173168>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-18.8646523819, -1.08685734205, -36.3697754802>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <0.514766636961, -5.35890801781, -21.4790894344>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-2.17780611479, -21.64743514, -51.1392108196>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-27.9399190263, 0.777489775029, -60.7738342336>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.52266320916, 23.2661343591, -52.0218859758>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-32.6267640066, -11.5567651308, -16.5881201204>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.6493365303, 19.6088633477, -58.6862373435>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <1.40745373411, 13.9072027739, -54.5137130142>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-11.1551677197, 4.3447468437, -23.3342812179>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-23.656170205, -12.5503084489, -55.7012487586>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-19.9941668378, -20.5347154185, -32.4245298312>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <11.5900405761, -3.75911036084, -22.6664742756>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.1221353194, 10.0270758334, -18.8720206609>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <25.424357204, 15.8049732199, -39.0813943588>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <10.6720218938, 25.2674322071, -48.8825041599>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-20.7052790979, -14.5876010487, -62.3289971619>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-21.5338017801, -3.24145571598, -53.949966318>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <26.4252905999, -3.69268024834, -34.6665498533>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-22.146620222, 6.13306264459, -30.2953438769>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <21.8508252236, 20.3863038527, -54.6177010472>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <16.7449461179, 4.00935776647, -66.8756945176>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <30.3949646147, -24.6446297265, -67.686811352>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-29.3535169327, -26.9838046395, -64.360795145>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <24.1729392127, -4.56556087322, -16.8276451992>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-4.1159344899, 29.6212073529, -35.7731365228>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}


sphere {
    <-13.5855174007, -28.5381680391, -61.2989959164>, 0.05
    pigment { color rgb <2.5, 2.5, 2.5>}
    finish { ambient 0.2 diffuse 0.4 specular 0.8 }
}

