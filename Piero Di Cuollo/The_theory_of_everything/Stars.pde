void Stars0()
{
  randomSeed(0);     
  for (int i = 0; i <=numStar; i++)
  {
   fill(0, 0, 100);
   ellipse(random(width), random(height), random(0, 2), random(0, 2));
   stroke(0, 0, 100);
   point(random(width), random(height));
  }
}

void Stars1()
{
  randomSeed(0);     
  for (int i = 0; i <=numStar1; i++)
  {
   fill(0, 0, 100);
   ellipse(random(width), random(height), random(0, 2), random(0, 2));
   stroke(0, 0, 100);
   point(random(width), random(height));
  }
}