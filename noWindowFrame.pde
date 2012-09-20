public void init(){
  // to make a frame not displayable, you can
  // use frame.removeNotify()
  frame.removeNotify();

  frame.setUndecorated(true);

  // addNotify, here i am not sure if you have 
  // to add notify again.  
  frame.addNotify();
  super.init();
}
