final int SQUARESIZE = 100;
Board board;
KomaList komaList;

void setup() {
  surface.setSize(6*SQUARESIZE, 4*SQUARESIZE);
  board = new Board();
  komaList = new KomaList();
}

void draw() {
  board.draw();
  komaList.draw();
}

void select(int x, int y){
   AbstractKoma koma = komaList.getSelectedKoma();
   if(koma==null){
     komaList.select(x,y);
   }else{
      koma.kStat.selected=false;
   }
}
