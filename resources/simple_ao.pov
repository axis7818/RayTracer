// csc473, assignment 1 sample file (RIGHT HANDED)

camera {
  location  <0, 0, 14>
  up        <0,  1,  0>
  right     <1.33333, 0,  0>
  look_at   <0, -4, 0>
}


light_source {<-100, 100, 100> color rgb <1.5, 1.5, 1.5>}

sphere { <0, 0, 0>, 2
      pigment {color rgb <1, 1, 0>}
      finish {ambient 0.4 diffuse 0.4 specular 0.5}
      translate <0, -4, 0>
}

plane {<0, 1, 0>, -6
  pigment {color rgb <1, 1, 1> }
  finish {ambient 0.4 diffuse 0.8}
}

box { <-1, -1, -1> <1, 1, 1>
  pigment {color rgb <1, 0, 0> }
  finish {ambient 0.4 diffuse 0.8}
  scale <1, 3, 1>
  rotate <0, -45, 0>
  translate <3, -4, -2>
}

triangle {
  <0, 3, 0>
  <-1, 0, 1.5>
  <1, 0, 1.5>
  pigment {color rgb <0, 1, 0> }
  finish {ambient 0.4 diffuse 0.8}
  scale <3, 3, 3>
  rotate <0, -40, 0>
  translate <-3, -6, -5>
}
triangle {
  <0, 3, 0>
  <-1, 0, 1.5>
  <0, 0, -1>
  pigment {color rgb <0, 1, 0> }
  finish {ambient 0.4 diffuse 0.8}
  scale <3, 3, 3>
  rotate <0, -40, 0>
  translate <-3, -6, -5>
}
triangle {
  <0, 3, 0>
  <1, 0, 1.5>
  <0, 0, -1>
  pigment {color rgb <0, 1, 0> }
  finish {ambient 0.4 diffuse 0.8}
  scale <3, 3, 3>
  rotate <0, -40, 0>
  translate <-3, -6, -5>
}
