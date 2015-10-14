/**
* Analogue to Digital to hear of noise present
*/

adc => FFT fft  => blackhole;

//set the sample rate
second /samp => float sample_rate;

8 => fft.size;

complex s[fft.size()/2];

while (true) 
{
  fft.upchuck();

  fft.spectrum(s);

  <<< s[0]$polar, s[1]$polar, s[2]$polar, s[3]$polar >>>;
  //keep time moving
  100::ms => now;

}
