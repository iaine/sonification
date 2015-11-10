/**
* Analogue to Digital to hear of noise present
*/

adc => FFT fft  => blackhole;
 
public class Sample
{

fun float highFrequency() 
{

//set the sample rate
second /samp => float sample_rate;

1024 => fft.size;

fft.size()/2 => int nyquist;

complex s[nyquist];

// calculate highest power peak, 
// which is the main frequency
0 => float highestPower;
-1 => int highestIndex;

float freq0;

for ( 0 => int i; i < nyquist; i++ ) 
{
  fft.upchuck();

  fft.spectrum(s);
  if ((s[i]$polar).mag > highestPower) 
  {
      (s[i]$polar).mag => highestPower;
      i => highestIndex;
  }
  highestIndex * sample_rate / fft.size() => freq0;
  //<<< s[0]$polar, s[1]$polar, s[2]$polar, s[3]$polar >>>;
  //keep time moving
  100::ms => now;
}
return freq0;
}

}
