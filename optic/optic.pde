/*
  Grayscale wave.
  A simple dynamic grid with grayscale transition by column, simulate a diagonal transition wave. 
*/

// Grayscale palette
color[] grayscale = {
  #000000,
  #FFFFFF,
  #EBEBEB,
  #E1E1E1,
  #D7D7D7,
  #D7D7D7,
  #C2C2C2,
  #B7B7B7,
  #ACACAC,
  #A0A0A0,
  #959595,
  #898989,
  #7D7D7D,
  #707070,
  #626262,
  #555555,
  #464646,
  #363636,
  #262626,
  #111111
};



// Particles setup

// Particle size
int particleWidth = 10;
int particleHeight = 10;

// Particle margin
int verticalMargin = 1;
int horizontalMargin = 1;

// Grid
int columns = 0;
int lines = 0;

// Draw particles grid
int x = 0;
int y = 0;

int columnSize = 0;
int lineSize = 0;

// Draw count;
int lap = 0;

void setup()
{
  size( 1280, 720 );
  background( #FFFFFF );
  
  // Setup columns and lines count.
  columns = width / (particleWidth + horizontalMargin);
  lines = height / (particleHeight + verticalMargin);
  
  // Setup columns and lines sizes.
  columnSize = (particleWidth + horizontalMargin) * columns;
  lineSize = (particleHeight + verticalMargin) * lines;
  
  // Limit draw speed to 12fps
  frameRate(12);
  
  // Remove stroke
  noStroke();
}

void draw()
{
  // Local params setup
  int   colorIndex;
  color hex;
  int   indexPick = 0;
  
  // Columns loop
  for( int c = 0; c < columns; c++ )
  {
    // Position for particle in x axis.
    x = horizontalMargin + (particleWidth + horizontalMargin) * c;
    
    // Line loop
    for( int l = 0; l < lines; l++ )
    {
      // Position for particle in y axis.
      y = verticalMargin + (particleHeight + verticalMargin) * l;
            
      // Pick some color from palette, the sum will simulate a diagonal wave
      indexPick = lap + c + l;
      
      // Pick a color at array, look the % operator will "truncate" the result to numbers bewteen zero and grayscale.length.
      colorIndex = indexPick % grayscale.length;
      
      // Pick the color and apply
      hex = grayscale[ colorIndex ];
      fill(hex);
      
      // Draw a rect with selected color. 
      rect(x, y, particleWidth, particleHeight);
    }
  }
  
  lap ++;
}
