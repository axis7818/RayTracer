// My custom .pov file for p4

camera {
  location <0, 1, 25>
  up <0, 1, 0>
  right < 1.33333, 0, 0>
  look_at <0, 0, 0>
}

light_source {<70, 100, 70> color rgb <1.5, 1.5, 1.5>}

plane {
  <0, 1, 0>, -30
  pigment {color rgb <0.1, 0.1, 0.1>}
  finish {ambient 0.2, diffuse 0.8}
}

// Sun
sphere { <0, 0, 0>, 1.5
  pigment { color rgbf <6.0, 0.6, 0.2, 0.1>}
  finish {ambient 0.2 diffuse 0.8 specular 0.3 roughness 0.4 ior 1.8 reflection 0.05}
  translate <0, 0, 0>
}

// Mercury
sphere { <-2, 0, 0>, 0.2
  pigment { color rgbf <0.8, 0.8, 0.8, 0.1>}
  finish {ambient 0.2 diffuse 0.5 specular 0.7 roughness 0.02 ior 1.8 reflection 0.5}
  translate <0, 0, 0>
}

// Venus
sphere { <-2.7, 0, 0>, 0.3
  pigment { color rgbf <1, 0.6, 0.4, 0.1>}
  finish {ambient 0.2 diffuse 0.8 specular 0.3 roughness 0.4 ior 1.8 reflection 0.05}
  translate <0, 0, 0>
}

// Earth
sphere { <-3.5, 0, 0>, 0.3
  pigment { color rgbf <0.2, 0.6, 0.4, 0.1>}
  finish {ambient 0.2 diffuse 0.8 specular 0.3 roughness 0.4 ior 1.8 reflection 0.05}
  translate <0, 0, 0>
}

// Mars
sphere { <-4.5, 0, 0>, 0.22
  pigment { color rgbf <1.0, 0.4, 0.2, 0.1>}
  finish {ambient 0.2 diffuse 0.8 specular 0.3 roughness 0.4 ior 1.8 reflection 0.05}
  translate <0, 0, 0>
}

// Jupiter
sphere { <-6.1, 0, 0>, 1
  pigment { color rgbf <1.0, 0.2, 0.2, 0.1>}
  finish {ambient 0.2 diffuse 0.8 specular 0.3 roughness 0.4 ior 1.8 reflection 0.05}
  translate <0, 0, 0>
}

// Saturn
sphere { <-8.6, 0, 0>, 0.8
  pigment { color rgb <1, 0.9, 0.4>}
  finish {ambient 0.2 diffuse 0.8 specular 0.7 roughness 0.02 reflection 0.2}
  translate <0, 0, 0>
}

// Uranus
sphere { <-10.7, 0, 0>, 0.5
  pigment { color rgb <0.2, 0.7, 0.9>}
  finish {ambient 0.2 diffuse 0.8 specular 0.7 roughness 0.02 reflection 0.2}
  translate <0, 0, 0>
}

// Neptune
sphere { <-12.2, 0, 0>, 0.5
  pigment { color rgb <0.1, 0.6, 1.0>}
  finish {ambient 0.2 diffuse 0.8 specular 0.7 roughness 0.02 reflection 0.2}
  translate <0, 0, 0>
}

// Pluto
sphere { <-14.5, 0, 0>, 0.1
  pigment { color rgb <0.7, 0.7, 0.7>}
  finish {ambient 0.2 diffuse 0.8 specular 0.7 roughness 0.02 reflection 0.2}
  translate <0, 0, 0>
}
