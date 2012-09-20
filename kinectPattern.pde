import maxlink.*;
import SimpleOpenNI.*;

SimpleOpenNI  context;
boolean       autoCalib=true;

PSys[] psys= new PSys[6];
color [] palette= new color [6];

int fadeOut=1;
boolean started=false;
float fps = 60;
int howManyParticles =100;
int create =1;
int triggerSpace=20;
MaxLink link = new MaxLink(this, "goLoops");
boolean ndScreen=false;
boolean show = false;
color on = color(255, 0, 0);

void setup()
{
  size(1280, 800, P3D);
  context = new SimpleOpenNI(this);

  // enable depthMap generation 
  if (context.enableDepth() == false)
  {
    println("Can't open the depthMap, maybe the camera is not connected!"); 
    exit();
    return;
  }

  palette[0] = #ff0000;
  palette[3] = #2505FF;
  palette[1] = #0C4800;
  palette[4] = #FFD300;
  palette[2] = #00ff00;
  palette[5] = #ff9200;

  // enable skeleton generation for all joints
  context.enableUser(SimpleOpenNI.SKEL_PROFILE_ALL);

  background(0, 0, 0);
  for (int i=0;i<6;i++) {
    psys[i]=new PSys(howManyParticles);
  }

  context.setMirror(true);
}

void draw()
{
  //draw rectangle to fade out visuals slowly
  noSmooth();//smooth in 3D creates a diagonal line through rects so turn off smooth
  fadeOut++;
  if (fadeOut % 20==1) {
    fill(0, 2);
    noStroke();
    rect(0, 0, 1280, 800);
  }
  smooth();

  // update the cam
  context.update();

  // draw depthImageMap
  if (show) {
    image(context.depthImage(), 0, 0);
  }

  // draw the skeleton if it's available
  int[] userList = context.getUsers();
  for (int i=0;i<userList.length;i++)
  {
    if (context.isTrackingSkeleton(userList[i])) {
      if (show) {
        stroke(0, 0, 255);
        strokeWeight(3);
        drawSkeleton(userList[i]);
      }
      
      // make a vector to store the left hand
      PVector leftHand = new PVector();
      // put the position of the left hand into that vector
      context.getJointPositionSkeleton(userList[i], SimpleOpenNI.SKEL_LEFT_HAND, leftHand);

      // convert the detected hand position
      // to "projective" coordinates
      // that will match the depth image
      PVector convertedleftHand = new PVector();
      context.convertRealWorldToProjective(leftHand, convertedleftHand);
      
      //now for the right hand
      PVector rightHand = new PVector();
      context.getJointPositionSkeleton(userList[i], SimpleOpenNI.SKEL_RIGHT_HAND, rightHand);
      PVector convertedRightHand = new PVector();
      context.convertRealWorldToProjective(rightHand, convertedRightHand);
      
      //find spot midway between hands horizontally to use to trigger the music
      PVector differenceVector = PVector.sub(convertedRightHand, convertedleftHand);
      float xLength=differenceVector.x / 2;
      musicX=convertedleftHand.x + xLength;
      
      //draw that spot if wanted
      if (show) {
        if (((musicX<64+triggerSpace)&&(musicX>64-triggerSpace))||((musicX<192+triggerSpace)&&(musicX>192-triggerSpace))||((musicX<320+triggerSpace)&&(musicX>320-triggerSpace))||((musicX<448+triggerSpace)&&(musicX>448-triggerSpace))||((musicX<576+triggerSpace)&&(musicX>576-triggerSpace))) {
          on=color(0, 255, 0);
        }
        else {
          on=color(255, 0, 0);
        }
        noStroke();
        fill(on);
        ellipse(musicX, 240, 30, 30);
      }
      
      //draw the visual and trigger sounds
      noFill();
      strokeWeight(1);
      stroke(palette[i], 100);
      psys[i].touch(map(convertedleftHand.x, 0, 640, 0, 1280), map(convertedleftHand.y, 0, 480, 0, 800));
      psys[i].go();
      psys[i].draw();
      stroke(palette[i+3], 100);
      psys[i+3].touch(map(convertedRightHand.x, 0, 640, 0, 1280), map(convertedRightHand.y, 0, 480, 0, 800));
      psys[i+3].go();
      psys[i+3].draw();
      musicTrigger(i);
      pMusicX=musicX;
    }
  }
}


