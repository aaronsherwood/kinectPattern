float musicX, pMusicX;

void musicTrigger(int i) {
  int margin=3;
  if (i==0){
  if ((musicX<64+triggerSpace)&&(musicX>64-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(0, 1);
        }  
        else { 
          link.output(0, 0);
        }

        if ((musicX<192+triggerSpace)&&(musicX>192-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(1, 1);
        }  
        else { 
          link.output(1, 0);
        }

        if ((musicX<320+triggerSpace)&&(musicX>320-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(2, 1);
        }  
        else { 
          link.output(2, 0);
        }

        if ((musicX<448+triggerSpace)&&(musicX>448-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(3, 1);
        }  
        else { 
          link.output(3, 0);
        }

        if ((musicX<576+triggerSpace)&&(musicX>576-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(4, 1);
        }  
        else { 
          link.output(4, 0);
        }
  }
  if (i==1){
  if ((musicX<64+triggerSpace)&&(musicX>64-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(5, 1);
        }  
        else { 
          link.output(5, 0);
        }

        if ((musicX<192+triggerSpace)&&(musicX>192-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(6, 1);
        }  
        else { 
          link.output(6, 0);
        }

        if ((musicX<320+triggerSpace)&&(musicX>320-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(7, 1);
        }  
        else { 
          link.output(7, 0);
        }

        if ((musicX<448+triggerSpace)&&(musicX>448-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(8, 1);
        }  
        else { 
          link.output(8, 0);
        }

        if ((musicX<576+triggerSpace)&&(musicX>576-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(9, 1);
        }  
        else { 
          link.output(9, 0);
        }
  }
  if (i==2){
  if ((musicX<64+triggerSpace)&&(musicX>64-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(10, 1);
        }  
        else { 
          link.output(10, 0);
        }

        if ((musicX<192+triggerSpace)&&(musicX>192-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(11, 1);
        }  
        else { 
          link.output(11, 0);
        }

        if ((musicX<320+triggerSpace)&&(musicX>320-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(12, 1);
        }  
        else { 
          link.output(12, 0);
        }

        if ((musicX<448+triggerSpace)&&(musicX>448-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(13, 1);
        }  
        else { 
          link.output(13, 0);
        }

        if ((musicX<576+triggerSpace)&&(musicX>576-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(14, 1);
        }  
        else { 
          link.output(14, 0);
        }
  }
  if (i==3){
  if ((musicX<64+triggerSpace)&&(musicX>64-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(15, 1);
        }  
        else { 
          link.output(15, 0);
        }

        if ((musicX<192+triggerSpace)&&(musicX>192-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(16, 1);
        }  
        else { 
          link.output(16, 0);
        }

        if ((musicX<320+triggerSpace)&&(musicX>320-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(17, 1);
        }  
        else { 
          link.output(17, 0);
        }

        if ((musicX<448+triggerSpace)&&(musicX>448-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(18, 1);
        }  
        else { 
          link.output(18, 0);
        }

        if ((musicX<576+triggerSpace)&&(musicX>576-triggerSpace)&&((musicX>pMusicX+margin)||(musicX<pMusicX-margin))) {
          link.output(19, 1);
        }  
        else { 
          link.output(19, 0);
        }
    }
}


