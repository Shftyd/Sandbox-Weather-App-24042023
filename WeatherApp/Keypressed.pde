//Global Variables
//
void keyPressedMusic() {
  //Music keyboard Short Cuts
  //Prototyping to copy when it works
  if ( key == 'm'|| key == 'M') {
    mute();
  }

  //
  //forward & reverse skip
  if ( key == 'f' || key == 'F' ) {
    forward();
  }

  if ( key == 'r' || key == 'R' ) {
    rewind();
  } // end reverse
  //
  //single loop
  //if (key == '1') songs[currentSong].loop(1); //ERROR
  if (key == '1') {
    singleLoop();
  }//End single loop
  //
  //loop infinite times
  if ( key <= '9' && key != '1') {
    infiniteLoop();
  }//End infinite times
  //
  //stop
  if ( key == 's' || key == 'S') {//STOP Button
    stopButton();
  }
  //
  //play-pause
  if (key == 'p' || key == 'P') {//play-pause button
    playPause();
  }
  //
  //Autoplay Button
  if ( key == 'o' || key == 'O'  ) {
    autoPlay();
  }//End Autoplay
  //
  //Next Song Button
  //Note: very simple NEXT Button, needs to be smarter
  if ( key == 'n' || key =='N' ) {
    autoPlay();
  }//End Next Song Button
  //
  //Previous Song Button, Back Button
  //Students to develop, based on next button
  //if ( key == 'b' || key =='B' ) {} //End Previous Song Button or Back Button
  //
  if ( key == 'b' || key =='B' ) {
    back();
  }//End Previous Song Button
  //
  if ( key == 'u' || key == 'U' ) {
    // shuffleSongs();
  }
}// end key pressed

void mousePressedMusic() {
}//end mousePressedMusic
//
void concatenationOfMusicFiles() {
}//End concatenation
//
void autoPlayMusic() {
  if ( autoPlayOn ) {
    //if () {} if else () {} else {}
    //ex#1 .poition() >= .length(), then rewind(), currentSong+=1, .play()
    //Ex#2: .isPlaying(), when false rewind(), currentSong+=1, .play()
  }
}//End Auto Play Music
void mute() {
  if ( songs[currentSong].isMuted() ) {
    songs[currentSong].unmute();
  } else if (  songs[currentSong].position() >=  songs[currentSong].length()*90/100 ) {
    //Students to ifnsih SMARTER Mute Button
    //ERROR: music player breaks if song finishes
    /* Ideas
     - rewind the songs
     - play the next song automatically
     - play of notification to choose the next song
     */
    songs[currentSong].rewind(); //simple solution, contains ERROR
  } else {
    songs[currentSong].mute();
  }
}//End Mute Button

//
void forward() {
  //skips forward to end of song
  //ERROR: if at end, plays beginning
  songs[currentSong].skip(1000); //parameter in milliseconds
  if ( songs[currentSong].position() >=  songs[currentSong].length()*90/100 ) {
  } else {
  }
}//ERROR catch: if end of snog, then next song
//end forwarsd
//
void rewind() {
  //spamming R means start playing at beginning of song
  songs[currentSong].skip(-1000); //parameter in illiseconds
}//end rewind
//
void singleLoop() {
  delay(songs[currentSong].length() - songs[currentSong].position() );
  //ERROR: delay stops all player functions, computer doesn't recognize if
  //       song is playing
  songs[currentSong].loop(0);
}//end singleLoop
//
void infiniteLoop() {
  //finish playign current song, then replay once
  delay( songs[currentSong].length() - songs[currentSong].position() );
  //ERROR; delay stops all player functions, computer doenst recognize if songs is playing
  songs[currentSong].loop(-1); //parameter is empty or -1
}//End infiniteLoop
//
void stopButton() {
  //note: include soft "PAUSE" for first 15 seconds of STOP
  //note: include auto prevoid & next track if STOP at beginning or end of file
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
  } else {
    songs[currentSong].rewind();
  }
}//end stopButton
//
void playPause() {
  if ( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if (songs[currentSong].position() >=  songs[currentSong].length()*90/100) {
    // student to finish
    // .pause(), .rewind(), then cue next song
    //CAUTON: without code, this conditional will not do anything
  } else {
    songs[currentSong].play(); ///no auto rewind like loop()
  }
}//end play-Pause
//
void autoPlay() {

  if ( autoPlayOn == false ) {
    autoPlayOn = true;
  } else {
    autoPlayOn = false;
  }
}//autoPlay
//
void next() {
  if ( songs[currentSong].isPlaying() ) {
  } else if  ( currentSong == songs.length - 1) { //ERROR Catch: ArrayOutOfBounds
    currentSong = songs.length - songs.length; //Intentoin is Zero
    songs[currentSong].rewind();
  } else {
    currentSong++;
    songs[currentSong].rewind();
  }
}//end next
//
void back() {
  if ( songs[currentSong].isPlaying() ) {
  } else if  ( currentSong == songs.length + 1) {//ERROR Catch: ArrayOutOfBounds
    songs[currentSong].rewind();
    currentSong = songs.length + songs.length; //Intentoin is Zero
  } else {
    currentSong--;
    songs[currentSong].rewind();
  }
//
//End Keypressed Subprogram
