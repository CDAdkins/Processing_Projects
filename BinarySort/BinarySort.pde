float[] values;

int i = 0;
int j = 0;

void setup() {
  size(1280, 720);
  values = new float[width];
  for (int i = 0; i < values.length; i++) {
    values[i] = random(height);
  }
  //bubbleSort(values);
}

void bubbleSort(float[] arr) {
   for (int i = 0; i < arr.length; i++) {
       for (int x = 0; x < arr.length - i - 1; x++) {
           if (arr[x] > arr[x + 1]) {
              swap(arr, x, x + 1); 
           }
       }
   }
}

void swap(float[] arr, int x, int y) {
   float temp = 0.0;
   temp = arr[x];
   arr[x] = arr[y];
   arr[y] = temp;
}

void draw() {
  background(0);
  
  float x = values[j];
  float y = values [j + 1];
  if (x > y) {
    swap(values, j, j + 1); 
  }
  
  if (i < values.length) {
    j += 1;
    if (j >= values.length-i-1) {
      j = 0;
      i += 1;
    }
  } else {
     noLoop(); 
  }
  
  
  int r = 0;
  int g = 0;
  int b = 0;
  
  // Getting a full color spectrum.
  for (int i = 0; i < values.length; i++) {
    //  r = 255;
    //  if (r == 255 && g < 255 && b == 0) {
    //  g++;
    //} else if (g == 255 && r > 0 && b == 0) {
    //  r--;
    //} else if (g == 255 && b < 255) {
    //  b++;
    //} else if (b == 255 && g > 0) {
    //  g--; 
    //} else if (b == 255 && g == 0 && r < 255) {
    //  r++; 
    //} else if (r == 255 && b > 0) {
    //  b--; 
    //}
  
    r = (int)values[i];
    if (r > 255) {
     g = (r-255);
     r -= g;
    }
    
    if (g > 255) {
     r--;
     b = (g-255);
     g -= b;
    }
  
    if (b > 255) {
     b = 255; 
    }
    stroke(r, g, b);
    //stroke(255);
        
     line(i, height, i, height - values[i]);
     
  }
}