// csc473, assignment 1 sample file (RIGHT HANDED)

camera {
  location  <0, 0, 14>
  up        <0,  1,  0>
  right     <1.33333, 0,  0>
  look_at   <0, 0, 0>
}


light_source {<-100, 100, 100> color rgb <1.5, 1.5, 1.5>}

sphere { <0, 0, 0>, 3
  pigment { color rgb <1.0, 1.0, 1.0>}
  finish {ambient 0.4 diffuse 0.8}
  translate <0, 0, 0>
}

plane {<0, 1, 0>, -3
      pigment {color rgb <1.0, 1.0, 1.0>}
      finish {ambient 0.4 diffuse 0.8}
}

box {
  <-4, -3, -3>, <-3, 9, 3>
      pigment {color rgb <1.0, 1.0, 1.0>}
      finish {ambient 0.4 diffuse 0.8}
}

sphere {
  <4, -2, 0>, 1
  pigment { color rgb <1.0, 1.0, 1.0>}
  finish {ambient 0.4 diffuse 0.8}
}
