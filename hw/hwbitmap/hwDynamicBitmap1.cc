// I pledge my honor that I have abided by the Stevens Honor System
#include <cstdint>

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "stb_image_write.h"
/*
Dynamic memory bitmap homework
hex: base 16
0   0000
1   0001
2   0010
3   0011
4   0100
5   0101
6   0110
7   0111
8   1000
9   1001
A   1010
B   1011
C   1100
D   1101
E   1110
F   1111
row-major order
    0 1 2 3
    4 5 6 7
    8 9 ...

    https://github.com/nothings/stb/blob/master/stb_image_write.h
    our color format is AABBGGRR  (alpha, blue, green, red)
                alpha = FF means opaque, 00 = transparent (invisible)
*/

class Bitmap {
 private:
  uint32_t w, h;
  uint32_t* pixels;  // allocate an array of w*h elements
 public:
  Bitmap(uint32_t w, uint32_t h, uint32_t bgcolor)
      : w(w), h(h), pixels(new uint32_t[w * h]) {
    for (uint32_t i = 0; i < w * h; i++)
      pixels[i] = bgcolor;
    /*
            0 0 0 0 0 0 0 0 0 0 0
            0 0 0 0 0 0 0 0 0 0 0
            0 0 0 0 0 0 0 0 0 0 0
            0 0 0 0 0 0 0 0 0 0 0
            0 0 0 0 0 0 0 0 0 0 0
     */
  }

  void set(uint32_t x, uint32_t y, uint32_t color) {
    pixels[y * w + x] = color;
  }

  uint32_t& operator()(uint32_t x, uint32_t y) { return pixels[y * w + x]; }

  uint32_t operator()(uint32_t x, uint32_t y) const {
    return pixels[y * w + x];
  }

  void horizLine(uint32_t x1, uint32_t x2, uint32_t y, uint32_t color) {
    /*
            This implementation is slow. it computes pixel[y*w+x] over and over
       again You should be able to go sequentially making your code simpler and
       faster
    */

    int z = y * w;

    for (uint32_t x = x1; x <= x2; x++) {
      pixels[z + x] = color;
    }
  }

  void vertLine(uint32_t y1, uint32_t y2, uint32_t x, uint32_t color) {
    // implement this (without using set)
    // suppose int pos=location(x,y), what is the location of (x,y+1) +w

    int a = y1 * w + x;
    int b = 0;

    for (int y = y1; y <= y2; y++) {
      pixels[a + b] = color;
      b += w;
    }
  }

  // draw a vertical line using XOR so drawing twice goes back to original
  void vertLineXOR(uint32_t y1, uint32_t y2, uint32_t x, uint32_t color) {
    // implement this (without using set)
    // suppose int pos=location(x,y), what is the location of (x,y+1) +w

    // XOR in C++ is .... pixels[i] = pixels[i] ^ something
    // pixels[i] ^= something

    int a = y1 * w + x;
    int b = 0;

    for (int y = y1; y <= y2; y++) {
      pixels[a + b] ^= color;
      b += w;
    }
  }

  void fillRect(uint32_t x,
                uint32_t y,  // x,y of top-left corner
                uint32_t wr,
                uint32_t h,
                uint32_t color) {
    // implement the first one. It's faster. WHY?
    //		for (y....)
    //			for (x ...

    /*
            0 0 0 0 0 0 0 0 0 0 0
    0 0 0 1 1 1 1 0 0 0 0
    0 0 0 1 1 1 1 0 0 0 0
    0 0 0 1 1 1 1 0 0 0 0
    */

    //		for (x....)
    //			for (y ...

    int start = x * w + y;
    int v = 0;

    for (int i = 0; i < h; i++) {
      for (int j = 0; j < wr; j++) {
        pixels[start + j] = color;
      }

      start += w;
    }
  }

  void write(const char filename[]) {
    stbi_write_png(filename, w, h, 4, pixels, 4 * w);
  }

  void writeIndexedBitmap(const char filename[]) {
    // Extra credit: write indexed bitmap
    // 1. count how many different colors there are in your picture
    // 2. if it is <= 256, create an indexed bitmap with the picture
    // 3. first create the index, an array of colors
    // 4. create array of bytes, each of which indexes into the array of colors
    // 5. write out indexed png
  }
};

int main() {
  Bitmap bm(640, 480, 0xFF000000);  // set every pixel to be black
  bm.set(0, 0, 0xFF808080);         // gray dot top left
  bm(3, 4) = 0xFFC0C0C0;  // lighter gray dot at x=3,y=4 using operator ()
  bm.horizLine(0, 500, 10, 0xFFFF0000);       // x1= 0 x2= 500, y = 10 BLUE
  bm.vertLine(0, 100, 10, 0xFF0000FF);        // y1 = 0 y2 = 100, x = 10 RED
  bm.fillRect(300, 100, 50, 50, 0xFF00FF00);  // x=300,y=100, w=50,h=50 GREEN
  bm.vertLineXOR(0, 100, 5, 0x00FFFFFF);

  // these 2 should cancel
  bm.vertLineXOR(0, 100, 65, 0x00FFFFFF);
  bm.vertLineXOR(0, 100, 65, 0x00FFFFFF);

  bm.write("small.png");

#if 0
  Bitmap bm2(1024, 1024, 0x00000000); // set every pixel to be black
  bm2.horizLine(0, 500, 0, 0x0000FF00); // x1= 0 x2= 500, y = 0 GREEN
  bm2.vertLine(0, 100, 10, 0x000000FF); // y1 = 0 y2 = 100, x = 10 RED
  bm2.fillRect(300,100, 50, 50, 0x00FF0000);; //left=300,top=100, w=50,h=50 BLUE
  bm2.write("big.png");
#endif
}