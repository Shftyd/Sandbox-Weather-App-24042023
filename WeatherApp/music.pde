//Global Variables
//
boolean isPlaying = false;
AudioPlayer player;
Minim minim;
//
void musicSetup () {
  minim = new Minim(this);
} //End musicSetup
//
void music() {
  player = minim.loadFile("//FS-052/studuser$/Gr11/a.harding/My Documents/GitHub/Sandbox-Weather-App-24042023/Songs/Eternal Garden - Dan Henig.mp3");
  player.loop();
} //End music
//
void musicKeyPressed() {
  if ( key == 'P' || key == 'p') {
    playPause();
  }

  //
  if ( key == 'F' || key == 'f') {
    forward(5);
  }

  //
  if ( key == 'R' || key == 'r') {
    rewind(5);
  }
} //End musicKeyPressed
//
void playPause() {
  if (isPlaying) {
    player.pause();
    isPlaying = false;
  } else {
    player.play();
    isPlaying = true;
  }
} //End playPause
void forward(float seconds) {
 int newPos = Math.round(player.position() + seconds * 1000);
  if (newPos > player.length()) {
    newPos = player.length();
  }
  player.cue(newPos);
} //End forward
//
void rewind(float seconds) {
  float newPos = player.position() - seconds;
  if (newPos < 0) {
    newPos = 0;
  }
  player.cue(int(newPos));
}//End rewind
//
//
//End music subprogram
