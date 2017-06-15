camera {
  location  <0, 0, 14>
  up        <0,  1,  0>
  right     <1.33333, 0,  0>
  look_at   <0, 0, 0>
}


light_source {<100, 100, 100> color rgb <1.5, 1.5, 1.5>}
light_source {<-100, 100, 100> color rgb <1.5, 1.5, 1.5>}


box { <-2, -5, -5>, <2, 4, 5>
   pigment { color rgb <1.0, 1.0, 1.0>}
      finish {ambient 0.4 diffuse 0.8}
         rotate <0, -45, 0>
             translate <3, 0, -5>
}

box { <-2, -5, -5>, <2, 3, 5>
   pigment { color rgb <1.0, 1.0, 1.0>}
      finish {ambient 0.2 diffuse 0.8}
         rotate <0, -75, 0>
             translate <10, 0, -5>
}

box { <1, -5, -5>, <2, 1, 5>
   pigment { color rgb <1.0, 1.0, 1.0>}
      finish {ambient 0.2 diffuse 0.8}
         rotate <0, -60, 0>
             translate <12, 0, -5>
}

box { <-2, -5, -5>, <2, 2, 5>
   pigment { color rgb <1.0, 1.0, 1.0>}
      finish {ambient 0.2 diffuse 0.8}
         rotate <0, 45, 0>
             translate <-4, 0, -5>
}

box { <-2, -5, -5>, <2, 3, 5>
   pigment { color rgb <1.0, 1.0, 1.0>}
      finish {ambient 0.2 diffuse 0.8}
         rotate <0, 45, 0>
             translate <-6, 0, -5>
}

box { <-2, -5, -75>, <-1, 1, 5>
   pigment { color rgb <1.0, 1.0, 1.0>}
      finish {ambient 0.2 diffuse 0.8}
         rotate <0, 35, 0>
             translate <-8, 0, -5>
}

plane {<0, 1, 0>, -4
      pigment {color rgb <1.0, 1.0, 1.0>}
      finish {ambient 0.4 diffuse 0.8}
}
