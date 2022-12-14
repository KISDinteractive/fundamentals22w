// This is a simple sound file player. Use mouse position to control speed & amplitude 
import processing.sound.*;
SoundFile soundfile;

void setup() {
  size(640, 360);
  background(255);
  soundfile = new SoundFile(this, "vibraphon.aiff"); // Load a soundfile
  soundfile.loop();  // Play the file in a loop
}      

void draw() {
  // Map mouseX from 0.25 to 4.0 for playback rate. 1 equals original playback speed,
  // 2 is twice the speed and will sound an octave higher, 0.5 is half the speed and
  // will make the file sound one ocative lower.
  float playbackSpeed = map(mouseX, 0, width, 0.25, 4.0);
  soundfile.rate(playbackSpeed);

  // Map mouseY from 0.2 to 1.0 for amplitude
  float amplitude = map(mouseY, 0, width, 0.2, 1.0);
  soundfile.amp(amplitude);
}
