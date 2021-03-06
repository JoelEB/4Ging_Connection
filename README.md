# 4Ging_Connection

[Inspiration](https://www.architecturendesign.net/satirical-illustrations-show-our-addiction-to-technology/)

## Raspberry Pi Setup Checklist

* Boot Pi from Thumb drive rather than SD card
* RaspiConfig - settings - timezones!
* Turn off WiFi and Bluetooth
* Flip display sideways 
* Turn screen saver off
* Install Processing 
  * Click Get Started to get rid of welcome message
* Start processing sketch automaticlaly on start (fullscreen) 
* Must use [GL Video Library](https://github.com/gohai/processing-glvideo), not default Video Library [forum](https://forum.processing.org/two/discussion/23423/can-t-access-camera-module-v2-with-processing)
* Turn off cursor in Processing sketches 
* Create one repository with all sketchs that can be downloaded on different Pis

## Concerns

* TVs could be tunred off with TV be gone/other IR signals 
* IR Sunlight affecting IR distance sensor (Won't be problem if run at night only) 
* How well IR distance sensor performs behind clear acrylic/plexiglass. 


## Notes 
* My 32" TV has a Height of 1216 pixels and a width of 656 pixels (When inverted 90 degrees) 


## Ways to Interact
* Change tint of image (Distance sensor, forground image fades to reveal background image as user appraoches) 
* move images that are supperimposed (move apps on phone to reveal blank background)
