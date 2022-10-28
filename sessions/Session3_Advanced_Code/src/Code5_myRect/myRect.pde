void myRect( int startX, int startY, int myRectWidth, int myRectHeight){ 
  int endX = startX + myRectWidth;
  int endY = startY + myRectHeight;
  line( startX, startY, endX, startY);
  line( endX, startY, endX, endY);
  line( endX, endY ,startX ,endY );
  line( startX ,endY , startX, startY );
  
  circle(startX, startY,50);
  circle(endX, startY,50);
  circle(endX, endY ,50);
  circle(startX ,endY ,50);
  
}
