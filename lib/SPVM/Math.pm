package SPVM::Math;

our $VERSION = '1.001';

1;

=head1 Name

SPVM::Math - Mathematical Calculations

=head1 Description

Math class in L<SPVM> has methods for mathematical calculations.

=head1 Usage

  use Math;
  
  my $sin = Math->sin(Math->PI / 4);
  
  my $cos = Math->cos(Math->PI / 4);
  
  my $tan = Math->tan(Math->PI / 4);
  
  # 1 + 2i
  my $z = Math->complex(1, 2);
  
  # i
  my $i = Math->complex(0, 1);
  
  # Euler's equation
  my $euler_left = Math->cexp(Math->cmul($i, $z));
  my $euler_right = Math->ccos($z) + Math->cmul($i, Math->csin($z));

=head1 Class Methods

=head2 abs

C<static method abs : int ($x : int);>

Calculates the abusolute value of $x and return it.

=head2 acos

C<static method acos : double ($x : double);>

Calls the C<acos> function defined in C<math.h> in the C language and returns its return value.

=head2 acosf

C<static method acosf : float ($x : float);>

Calls the C<acosf> function defined in C<math.h> in the C language and returns its return value.

=head2 acosh

C<static method acosh : double ($x : double);>

Calls the C<acosh> function defined in C<math.h> in the C language and returns its return value.

=head2 acoshf

C<static method acoshf : float ($x : float);>

Calls the C<acoshf> function defined in C<math.h> in the C language and returns its return value.

=head2 asin

C<static method asin : double ($x : double);>

Calls the C<asin> function defined in C<math.h> in the C language and returns its return value.

=head2 asinf

C<static method asinf : float ($x : float);>

Calls the C<asinf> function defined in C<math.h> in the C language and returns its return value.

=head2 asinh

C<static method asinh : double ($x : double);>

Calls the C<asinh> function defined in C<math.h> in the C language and returns its return value.

=head2 asinhf

C<static method asinhf : float ($x : float);>

Calls the C<asinhf> function defined in C<math.h> in the C language and returns its return value.

=head2 atan

C<static method atan : double ($x : double);>

Calls the C<atan> function defined in C<math.h> in the C language and returns its return value.

=head2 atan2

C<static method atan2 : double ($y : double, $x : double);>

Calls the C<atan2> function defined in C<math.h> in the C language and returns its return value.

=head2 atanf

C<static method atanf : float ($x : float);>

Calls the C<atanf> function defined in C<math.h> in the C language and returns its return value.

=head2 atanh

C<static method atanh : double ($x : double);>

Calls the C<atanh> function defined in C<math.h> in the C language and returns its return value.

=head2 atanhf

C<static method atanhf : float ($x : float);>

Calls the C<atanhf> function defined in C<math.h> in the C language and returns its return value.

=head2 cabs

C<static method cabs : double ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<cabs> function defined in C<complex.h> in the C language and returns its return value.

=head2 cabsf

C<static method cabsf : float ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<cabsf> function defined in C<complex.h> in the C language and returns its return value.

=head2 cacos

C<static method cacos : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<cacos> function defined in C<complex.h> in the C language and returns its return value.

=head2 cacosf

C<static method cacosf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<cacosf> function defined in C<complex.h> in the C language and returns its return value.

=head2 cacosh

C<static method cacosh : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<cacosh> function defined in C<complex.h> in the C language and returns its return value.

=head2 cacoshf

C<static method cacoshf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<cacoshf> function defined in C<complex.h> in the C language and returns its return value.

=head2 cadd

C<static method cadd : L<Complex_2d|SPVM::Complex_2d> ($z1 : L<Complex_2d|SPVM::Complex_2d>, $z2 : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<cadd> function defined in C<complex.h> in the C language and returns its return value.

=head2 caddf

C<static method caddf : L<Complex_2f|SPVM::Complex_2f> ($z1 : L<Complex_2f|SPVM::Complex_2f>, $z2 : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<caddf> function defined in C<complex.h> in the C language and returns its return value.

=head2 carg

C<static method carg : double ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<carg> function defined in C<complex.h> in the C language and returns its return value.

=head2 cargf

C<static method cargf : float ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<cargf> function defined in C<complex.h> in the C language and returns its return value.

=head2 casin

C<static method casin : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<casin> function defined in C<complex.h> in the C language and returns its return value.

=head2 casinf

C<static method casinf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<casinf> function defined in C<complex.h> in the C language and returns its return value.

=head2 casinh

C<static method casinh : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<casinh> function defined in C<complex.h> in the C language and returns its return value.

=head2 casinhf

C<static method casinhf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<casinhf> function defined in C<complex.h> in the C language and returns its return value.

=head2 catan

C<static method catan : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<catan> function defined in C<complex.h> in the C language and returns its return value.

=head2 catanf

C<static method catanf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<catanf> function defined in C<complex.h> in the C language and returns its return value.

=head2 catanh

C<static method catanh : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<catanh> function defined in C<complex.h> in the C language and returns its return value.

=head2 catanhf

C<static method catanhf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<catanhf> function defined in C<complex.h> in the C language and returns its return value.

=head2 cbrt

C<static method cbrt : double ($x : double);>

Calls the C<cbrt> function defined in C<math.h> in the C language and returns its return value.

=head2 cbrtf

C<static method cbrtf : float ($x : float);>

Calls the C<cbrtf> function defined in C<math.h> in the C language and returns its return value.

=head2 ccos

C<static method ccos : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<ccos> function defined in C<complex.h> in the C language and returns its return value.

=head2 ccosf

C<static method ccosf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<ccosf> function defined in C<complex.h> in the C language and returns its return value.

=head2 ccosh

C<static method ccosh : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<ccosh> function defined in C<complex.h> in the C language and returns its return value.

=head2 ccoshf

C<static method ccoshf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<ccoshf> function defined in C<complex.h> in the C language and returns its return value.

=head2 cdiv

C<static method cdiv : L<Complex_2d|SPVM::Complex_2d> ($z1 : L<Complex_2d|SPVM::Complex_2d>, $z2 : L<Complex_2d|SPVM::Complex_2d>);>

double complex division.

=head2 cdivf

C<static method cdivf : L<Complex_2f|SPVM::Complex_2f> ($z1 : L<Complex_2f|SPVM::Complex_2f>, $z2 : L<Complex_2f|SPVM::Complex_2f>);>

float complex division.

=head2 ceil

C<static method ceil : double ($x : double);>

Calls the C<ceil> function defined in C<math.h> in the C language and returns its return value.

=head2 ceilf

C<static method ceilf : float ($x : float);>

Calls the C<ceilf> function defined in C<math.h> in the C language and returns its return value.

=head2 cexp

C<static method cexp : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<cexp> function defined in C<complex.h> in the C language and returns its return value.

=head2 cexpf

C<static method cexpf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<cexpf> function defined in C<complex.h> in the C language and returns its return value.

=head2 clog

C<static method clog : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<clog> function defined in C<complex.h> in the C language and returns its return value.

=head2 clogf

C<static method clogf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<clogf> function defined in C<complex.h> in the C language and returns its return value.

=head2 cmul

C<static method cmul : L<Complex_2d|SPVM::Complex_2d> ($z1 : L<Complex_2d|SPVM::Complex_2d>, $z2 : L<Complex_2d|SPVM::Complex_2d>);>

Calculates the product($z1 * $z2) of double complex numbers.

=head2 cmulf

C<static method cmulf : L<Complex_2f|SPVM::Complex_2f> ($z1 : L<Complex_2f|SPVM::Complex_2f>, $z2 : L<Complex_2f|SPVM::Complex_2f>);>

Calculates the product($z1 * $z2) of float complex numbers.

=head2 complex

C<static method complex : L<Complex_2d|SPVM::Complex_2d> ($x : double, $y : double);>

Creates a double complex value of the L<Complex_2d|SPVM::Complex_2d> type.

=head2 complexf

C<static method complexf : L<Complex_2f|SPVM::Complex_2f> ($x : float, $y : float);>

Creates a float complex value of the L<Complex_2f|SPVM::Complex_2f> type.

=head2 conj

C<static method conj : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<conj> function defined in C<complex.h> in the C language and returns its return value.

=head2 conjf

C<static method conjf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<conjf> function defined in C<complex.h> in the C language and returns its return value.

=head2 copysign

C<static method copysign : double ($x : double, $y : double);>

Calls the C<copysign> function defined in C<math.h> in the C language and returns its return value.

=head2 copysignf

C<static method copysignf : float ($x : float, $y : float);>

Calls the C<copysignf> function defined in C<math.h> in the C language and returns its return value.

=head2 cos

C<static method cos : double ($x : double);>

Calls the C<cos> function defined in C<math.h> in the C language and returns its return value.

=head2 cosf

C<static method cosf : float ($x : float);>

Calls the C<cosf> function defined in C<math.h> in the C language and returns its return value.

=head2 cosh

C<static method cosh : double ($x : double);>

Calls the C<cosh> function defined in C<math.h> in the C language and returns its return value.

=head2 coshf

C<static method coshf : float ($x : float);>

Calls the C<coshf> function defined in C<math.h> in the C language and returns its return value.

=head2 cpow

C<static method cpow : L<Complex_2d|SPVM::Complex_2d> ($z1 : L<Complex_2d|SPVM::Complex_2d>, $z2 : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<cpow> function defined in C<complex.h> in the C language and returns its return value.

=head2 cpowf

C<static method cpowf : L<Complex_2f|SPVM::Complex_2f> ($z1 : L<Complex_2f|SPVM::Complex_2f>, $z2 : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<cpowf> function defined in C<complex.h> in the C language and returns its return value.

=head2 cscamul

C<static method cscamul : L<Complex_2d|SPVM::Complex_2d> ($c : double, $z : L<Complex_2d|SPVM::Complex_2d>);>

Calculates the scalar product($c * $z) of the double complex, and returns it.

=head2 cscamulf

C<static method cscamulf : L<Complex_2f|SPVM::Complex_2f> ($c : float, $z : L<Complex_2f|SPVM::Complex_2f>);>

Calculates the scalar product($c * $z) of the float complex, and returns it.

=head2 csin

C<static method csin : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<csin> function defined in C<complex.h> in the C language and returns its return value.

=head2 csinf

C<static method csinf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<csinf> function defined in C<complex.h> in the C language and returns its return value.

=head2 csinh

C<static method csinh : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<csinh> function defined in C<complex.h> in the C language and returns its return value.

=head2 csinhf

C<static method csinhf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<csinhf> function defined in C<complex.h> in the C language and returns its return value.

=head2 csqrt

C<static method csqrt : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<csqrt> function defined in C<complex.h> in the C language and returns its return value.

=head2 csqrtf

C<static method csqrtf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<csqrtf> function defined in C<complex.h> in the C language and returns its return value.

=head2 csub

C<static method csub : L<Complex_2d|SPVM::Complex_2d> ($z1 : L<Complex_2d|SPVM::Complex_2d>, $z2 : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<csub> function defined in C<complex.h> in the C language and returns its return value.

=head2 csubf

C<static method csubf : L<Complex_2f|SPVM::Complex_2f> ($z1 : L<Complex_2f|SPVM::Complex_2f>, $z2 : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<csubf> function defined in C<complex.h> in the C language and returns its return value.

=head2 cneg

C<static method cneg : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Negates the sign of $z and returns it.

=head2 cnegf

C<static method cnegf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Negates the sign of $z and returns it.

=head2 ctan

C<static method ctan : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<ctan> function defined in C<complex.h> in the C language and returns its return value.

=head2 ctanf

C<static method ctanf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<ctanf> function defined in C<complex.h> in the C language and returns its return value.

=head2 ctanh

C<static method ctanh : L<Complex_2d|SPVM::Complex_2d> ($z : L<Complex_2d|SPVM::Complex_2d>);>

Calls the C<ctanh> function defined in C<complex.h> in the C language and returns its return value.

=head2 ctanhf

C<static method ctanhf : L<Complex_2f|SPVM::Complex_2f> ($z : L<Complex_2f|SPVM::Complex_2f>);>

Calls the C<ctanhf> function defined in C<complex.h> in the C language and returns its return value.

=head2 E

C<static method E : double ();>

Returns the Euler's number C<e>. This value is C<0x1.5bf0a8b145769p+1>.

=head2 erf

C<static method erf : double ($x : double);>

Calls the C<erf> function defined in C<math.h> in the C language and returns its return value.

=head2 erfc

C<static method erfc : double ($x : double);>

Calls the C<erfc> function defined in C<math.h> in the C language and returns its return value.

=head2 erfcf

C<static method erfcf : float ($x : float);>

Calls the C<erfcf> function defined in C<math.h> in the C language and returns its return value.

=head2 erff

C<static method erff : float ($x : float);>

Calls the C<erff> function defined in C<math.h> in the C language and returns its return value.

=head2 exp

C<static method exp : double ($x : double);>

Calls the C<exp> function defined in C<math.h> in the C language and returns its return value.

=head2 exp2

C<static method exp2 : double ($x : double);>

Calls the C<exp2> function defined in C<math.h> in the C language and returns its return value.

=head2 exp2f

C<static method exp2f : float ($x : float);>

Calls the C<exp2f> function defined in C<math.h> in the C language and returns its return value.

=head2 expf

C<static method expf : float ($x : float);>

Calls the C<expf> function defined in C<math.h> in the C language and returns its return value.

=head2 expm1

C<static method expm1 : double ($x : double);>

Calls the C<expm1> function defined in C<math.h> in the C language and returns its return value.

=head2 expm1f

C<static method expm1f : float ($x : float);>

Calls the C<expm1f> function defined in C<math.h> in the C language and returns its return value.

=head2 fabs

C<static method fabs : double ($x : double);>

Calls the C<fabs> function defined in C<math.h> in the C language and returns its return value.

=head2 fabsf

C<static method fabsf : float ($x : float);>

Calls the C<fabsf> function defined in C<math.h> in the C language and returns its return value.

=head2 fdim

C<static method fdim : double ($x : double, $y : double);>

Calls the C<fdim> function defined in C<math.h> in the C language and returns its return value.

=head2 fdimf

C<static method fdimf : float ($x : float, $y : float);>

Calls the C<fdimf> function defined in C<math.h> in the C language and returns its return value.

=head2 FE_DOWNWARD

C<static method FE_DOWNWARD : int ();>

Calls the C<FE_DOWNWARD> macro of the C language defined in C<fenv.h>.

=head2 FE_TONEAREST

C<static method FE_TONEAREST : int ();>

Calls the C<FE_TONEAREST> macro of the C language defined in C<fenv.h>.

=head2 FE_TOWARDZERO

C<static method FE_TOWARDZERO : int ();>

Calls the C<FE_TOWARDZERO> macro of the C language defined in C<fenv.h>.

=head2 FE_UPWARD

C<static method FE_UPWARD : int ();>

Calls the C<FE_UPWARD> macro of the C language defined in C<fenv.h>.

=head2 fesetround

C<static method fesetround : int ($round : int);>

Calls the C<fesetround> function defined in C<math.h> in the C language and returns its return value.

=head2 floor

C<static method floor : double ($x : double);>

Calls the C<floor> function defined in C<math.h> in the C language and returns its return value.

=head2 floorf

C<static method floorf : float ($x : float);>

Calls the C<floorf> function defined in C<math.h> in the C language and returns its return value.

=head2 fma

C<static method fma : double ($x : double, $y : double, $x3 : double);>

Calls the C<fma> function defined in C<math.h> in the C language and returns its return value.

=head2 fmaf

C<static method fmaf : float ($x : float, $y : float, $x3 : float);>

Calls the C<fmaf> function defined in C<math.h> in the C language and returns its return value.

=head2 fmax

C<static method fmax : double ($x : double, $y : double);>

Calls the C<fmax> function defined in C<math.h> in the C language and returns its return value.

=head2 fmaxf

C<static method fmaxf : float ($x : float, $y : float);>

Calls the C<fmaxf> function defined in C<math.h> in the C language and returns its return value.

=head2 fmin

C<static method fmin : double ($x : double, $y : double);>

Calls the C<fmin> function defined in C<math.h> in the C language and returns its return value.

=head2 fminf

C<static method fminf : float ($x : float, $y : float);>

Calls the C<fminf> function defined in C<math.h> in the C language and returns its return value.

=head2 fmod

C<static method fmod : double ($x : double, $y : double);>

Calls the C<fmod> function defined in C<math.h> in the C language and returns its return value.

=head2 fmodf

C<static method fmodf : float ($x : float, $y : float);>

Calls the C<fmodf> function defined in C<math.h> in the C language and returns its return value.

=head2 FP_ILOGB0

C<static method FP_ILOGB0 : int ();>

Calls the C<FP_ILOGB0> macro of the C language defined in C<fenv.h>.

=head2 FP_ILOGBNAN

C<static method FP_ILOGBNAN : int ();>

Calls the C<FP_ILOGBNAN> macro of the C language defined in C<fenv.h>.

=head2 FP_INFINITE

C<static method FP_INFINITE : int ();>

Calls the C<FP_INFINITE> macro of the C language defined in C<fenv.h>.

=head2 FP_NAN

C<static method FP_NAN : int ();>

Calls the C<FP_NAN> macro of the C language defined in C<fenv.h>.

=head2 FP_ZERO

C<static method FP_ZERO : int ();>

Calls the C<FP_ZERO> macro of the C language defined in C<fenv.h>.

=head2 fpclassify

C<static method fpclassify : int ($x : double);>

Calls the C<fpclassify> macro of the C language defined in C<math.h> with the double argument $x.

=head2 fpclassifyf

C<static method fpclassifyf : int ($x : float);>

Calls the C<fpclassify> macro of the C language defined in C<math.h> with the float argument $x.

=head2 frexp

C<static method frexp : double ($x : double, $exp : int*);>

Calls the C<frexp> function defined in C<math.h> in the C language and returns its return value.

=head2 frexpf

C<static method frexpf : float ($x : float, $exp : int*);>

Calls the C<frexpf> function defined in C<math.h> in the C language and returns its return value.

=head2 HUGE_VAL

C<static method HUGE_VAL : double ();>

Calls the C<HUGE_VAL> macro defined in C<math.h> in the C language and returns its return value.

=head2 HUGE_VALF

C<static method HUGE_VALF : float ();>

Calls the C<HUGE_VALF> macro defined in C<math.h> in the C language and returns its return value.

=head2 hypot

C<static method hypot : double ($x : double, $y : double);>

Calls the C<hypot> function defined in C<math.h> in the C language and returns its return value.

=head2 hypotf

C<static method hypotf : float ($x : float, $y : float);>

Calls the C<hypotf> function defined in C<math.h> in the C language and returns its return value.

=head2 ilogb

C<static method ilogb : int ($x : double);>

Calls the C<ilogb> function defined in C<math.h> in the C language and returns its return value.

=head2 ilogbf

C<static method ilogbf : int ($x : float);>

Calls the C<ilogbf> function defined in C<math.h> in the C language and returns its return value.

=head2 INFINITY

C<static method INFINITY : double ();>

Calls the C<INFINITY> macro of the C language defined in C<math.h>, and returns the return value as a dobule value.

=head2 INFINITYF

C<static method INFINITYF : float ();>

Calls the C<INFINITY> macro of the C language defined in C<math.h>, and the return value as a float value.

=head2 isfinite

C<static method isfinite : int ($x : double);>

Calls the C<isfinite> macro of the C language defined in C<math.h> with the double argument $x.

=head2 isfinitef

C<static method isfinitef : int ($x : float);>

Calls the C<isfinite> macro of the C language defined in C<math.h> with the float argument $x.

=head2 isgreater

C<static method isgreater : int ($x : double, $y : double);>

Calls the C<isgreater> macro of the C language defined in C<math.h> with the double arguments $x and $y.

=head2 isgreaterequal

C<static method isgreaterequal : int ($x : double, $y : double);>

Calls the C<isgreaterequal> macro of the C language defined in C<math.h> with the double arguments $x and $y.

=head2 isgreaterequalf

C<static method isgreaterequalf : int ($x : float, $y : float);>

Calls the C<isgreaterequal> macro of the C language defined in C<math.h> with the float arguments $x and $y.

=head2 isgreaterf

C<static method isgreaterf : int ($x : float, $y : float);>

Calls the C<isgreater> macro of the C language defined in C<math.h> with the float arguments $x and $y.

=head2 isinf

C<static method isinf : int ($x : double);>

Calls the C<isinf> macro of the C language defined in C<math.h> with the double argument $x.

=head2 isinff

C<static method isinff : int($x : float);>

Calls the C<isinf> macro of the C language defined in C<math.h> with the float argument $x.

=head2 isless

C<static method isless : int ($x : double, $y : double);>

Calls the C<isless> macro of the C language defined in C<math.h> with the double arguments $x and $y.

=head2 islessequal

C<static method islessequal : int ($x : double, $y : double);>

Calls the C<islessequal> macro of the C language defined in C<math.h> with the double arguments $x and $y.

=head2 islessequalf

C<static method islessequalf : int ($x : float, $y : float);>

Calls the C<islessequalf> macro of the C language defined in C<math.h> with the float arguments $x and $y.

=head2 islessf

C<static method islessf : int ($x : float, $y : float);>

Calls the C<islessf> macro of the C language defined in C<math.h> with the float arguments $x and $y.

=head2 islessgreater

C<static method islessgreater : int ($x : double, $y : double);>

Calls the C<islessgreater> macro of the C language defined in C<math.h> with the double arguments $x and $y.

=head2 islessgreaterf

C<static method islessgreaterf : int ($x : float, $y : float);>

Calls the C<islessgreater> macro of the C language defined in C<math.h> with the float arguments $x and $y.

=head2 isnan

C<static method isnan : int ($x : double);>

Calls the C<isnan> macro of the C language defined in C<math.h> with the double argument $x.

=head2 isnanf

C<static method isnanf : int ($x : float);>

Calls the C<isnanf> macro of the C language defined in C<math.h> with the float argument $x.

=head2 isunordered

C<static method isunordered : int ($x : double, $y : double);>

Calls the C<isunordered> macro of the C language defined in C<math.h> with the double arguments $x and $y.

=head2 isunorderedf

C<static method isunorderedf : int ($x : float, $y : float);>

Calls the C<isunorderedf> macro of the C language defined in C<math.h> with the float arguments $x and $y.

=head2 labs

C<static method labs : long ($x : long);>

Returns the abusolute value of the long value $x.

=head2 ldexp

C<static method ldexp : double ($x : double, $exp : int);>

Calls the C<ldexp> function defined in C<math.h> in the C language and returns its return value.

=head2 ldexpf

C<static method ldexpf : float ($x : float, $exp : int);>

Calls the C<ldexpf> function defined in C<math.h> in the C language and returns its return value.

=head2 lgamma

C<static method lgamma : double ($x : double);>

Calls the C<lgamma> function defined in C<math.h> in the C language and returns its return value.

=head2 lgammaf

C<static method lgammaf : float ($x : float);>

Calls the C<lgammaf> function defined in C<math.h> in the C language and returns its return value.

=head2 log

C<static method log : double ($x : double);>

Calls the C<log> function defined in C<math.h> in the C language and returns its return value.

=head2 log10

C<static method log10 : double ($x : double);>

Calls the C<log10> function defined in C<math.h> in the C language and returns its return value.

=head2 log10f

C<static method log10f : float ($x : float);>

Calls the C<log10f> function defined in C<math.h> in the C language and returns its return value.

=head2 log1p

C<static method log1p : double ($x : double);>

Calls the C<log1p> function defined in C<math.h> in the C language and returns its return value.

=head2 log1pf

C<static method log1pf : float ($x : float);>

Calls the C<log1pf> function defined in C<math.h> in the C language and returns its return value.

=head2 log2

C<static method log2 : double ($x : double);>

Calls the C<log2> function defined in C<math.h> in the C language and returns its return value.

=head2 log2f

C<static method log2f : float ($x : float);>

Calls the C<log2f> function defined in C<math.h> in the C language and returns its return value.

=head2 logb

C<static method logb : double ($x : double);>

Calls the C<logb> function defined in C<math.h> in the C language and returns its return value.

=head2 logbf

C<static method logbf : float ($x : float);>

Calls the C<logbf> function defined in C<math.h> in the C language and returns its return value.

=head2 logf

C<static method logf : float ($x : float);>

Calls the C<logf> function defined in C<math.h> in the C language and returns its return value.

=head2 lround

C<static method lround : long ($x : double);>

Calls the C<llround> function defined in C<math.h> in the C language and returns its return value.

=head2 lroundf

C<static method lroundf : long ($x : float);>

Calls the C<llroundf> function defined in C<math.h> in the C language and returns its return value.

=head2 modf

C<static method modf : double ($x : double, $intpart : double*);>

Calls the C<modf> function defined in C<math.h> in the C language and returns its return value.

=head2 modff

C<static method modff : float ($x : float, $intpart : float*);>

Calls the C<modff> function defined in C<math.h> in the C language and returns its return value.

=head2 NAN

C<static method NAN : double ();>

Calls the C<NAN> macro of the C language defined in C<math.h>, and return the return value as a double type.

=head2 nan

C<static method nan : double ($string : string);>

Calls the C<nan> function defined in C<math.h> in the C language and returns its return value.

Exceptions:

The $string must be defined. Otherwise an exception is thrown.

=head2 NANF

C<static method NANF : float ();>

Calls the C<NAN> macro of the C language defined in C<math.h>, and return the return value as a float type.

=head2 nanf

C<static method nanf : float ($string : string);>

Calls the C<nanf> function defined in C<math.h> in the C language and returns its return value.

Exceptions:

The $string must be defined. Otherwise an exception is thrown.

=head2 nearbyint

C<static method nearbyint : double ($x : double);>

Calls the C<nearbyint> function defined in C<math.h> in the C language and returns its return value.

=head2 nearbyintf

C<static method nearbyintf : float ($x : float);>

Calls the C<nearbyintf> function defined in C<math.h> in the C language and returns its return value.

=head2 nextafter

C<static method nextafter : double ($x : double, $y : double);>

Calls the C<nextafter> function defined in C<math.h> in the C language and returns its return value.

=head2 nextafterf

C<static method nextafterf : float ($x : float, $y : float);>

Calls the C<nextafterf> function defined in C<math.h> in the C language and returns its return value.

=head2 nexttoward

C<static method nexttoward : double ($x : double, $y : double);>

Calls the C<nexttoward> function defined in C<math.h> in the C language and returns its return value.

=head2 nexttowardf

C<static method nexttowardf : float ($x : float, $y : double);>

Calls the C<nexttowardf> function defined in C<math.h> in the C language and returns its return value.

=head2 PI

C<static method PI : double ();>

Returns pi. This value is C<0x1.921fb54442d18p+1>.

=head2 pow

C<static method pow : double ($x : double, $y : double);>

Calls the C<pow> function defined in C<math.h> in the C language and returns its return value.

=head2 powf

C<static method powf : float ($x : float, $y : float);>

Calls the C<powf> function defined in C<math.h> in the C language and returns its return value.

=head2 remainder

C<static method remainder : double ($x : double, $y : double);>

Calls the C<remainder> function defined in C<math.h> in the C language and returns its return value.

=head2 remainderf

C<static method remainderf : float ($x : float, $y : float);>

Calls the C<remainderf> function defined in C<math.h> in the C language and returns its return value.

=head2 remquo

C<static method remquo : double ($x : double, $y : double, $quo : int*);>

Calls the C<remquo> function defined in C<math.h> in the C language and returns its return value.

=head2 remquof

C<static method remquof : float ($x : float, $y : float, $quo : int*);>

Calls the C<remquof> function defined in C<math.h> in the C language and returns its return value.

=head2 round

C<static method round : double ($x : double);>

Calls the C<round> function defined in C<math.h> in the C language and returns its return value.

=head2 roundf

C<static method roundf : float ($x : float);>

Calls the C<roundf> function defined in C<math.h> in the C language and returns its return value.

=head2 scalbln

C<static method scalbln : double ($x : double, $exp : long);>

Calls the C<scalbln> function defined in C<math.h> in the C language and returns its return value.

=head2 scalblnf

C<static method scalblnf : float ($x : float, $exp : long);>

Calls the C<scalblnf> function defined in C<math.h> in the C language and returns its return value.

=head2 scalbn

C<static method scalbn : double ($x : double, $exp : int);>

Calls the C<scalbn> function defined in C<math.h> in the C language and returns its return value.

=head2 scalbnf

C<static method scalbnf : float ($x : float, $exp : int);>

Calls the C<scalbnf> function defined in C<math.h> in the C language and returns its return value.

=head2 signbit

C<static method signbit : int ($x : double);>

Calls the C<signbit> function defined in C<math.h> in the C language and returns its return value.

=head2 signbitf

C<static method signbitf : int ($x : float);>

Calls the C<signbitf> function defined in C<math.h> in the C language and returns its return value.

=head2 sin

C<static method sin : double ($x : double);>

Calls the C<sin> function defined in C<math.h> in the C language and returns its return value.

=head2 sinf

C<static method sinf : float ($x : float);>

Calls the C<sinf> function defined in C<math.h> in the C language and returns its return value.

=head2 sinh

C<static method sinh : double ($x : double);>

Calls the C<sinh> function defined in C<math.h> in the C language and returns its return value.

=head2 sinhf

C<static method sinhf : float ($x : float);>

Calls the C<sinhf> function defined in C<math.h> in the C language and returns its return value.

=head2 sqrt

C<static method sqrt : double ($x : double);>

Calls the C<sqrt> function defined in C<math.h> in the C language and returns its return value.

=head2 sqrtf

C<static method sqrtf : float ($x : float);>

Calls the C<sqrtf> function defined in C<math.h> in the C language and returns its return value.

=head2 tan

C<static method tan : double ($x : double);>

Calls the C<tan> function defined in C<math.h> in the C language and returns its return value.

=head2 tanf

C<static method tanf : float ($x : float);>

Calls the C<tanf> function defined in C<math.h> in the C language and returns its return value.

=head2 tanh

C<static method tanh : double ($x : double);>

Calls the C<tanh> function defined in C<math.h> in the C language and returns its return value.

=head2 tanhf

C<static method tanhf : float ($x : float);>

Calls the C<tanhf> function defined in C<math.h> in the C language and returns its return value.

=head2 tgamma

C<static method tgamma : double ($x : double);>

Calls the C<tgamma> function defined in C<math.h> in the C language and returns its return value.

=head2 tgammaf

C<static method tgammaf : float ($x : float);>

Calls the C<tgammaf> function defined in C<math.h> in the C language and returns its return value.

=head2 trunc

C<static method trunc : double ($x : double);>

Calls the C<trunc> function defined in C<math.h> in the C language and returns its return value.

=head2 truncf

C<static method truncf : float ($x : float);>

Calls the C<truncf> function defined in C<math.h> in the C language and returns its return value.

=head1 Copyright & License

Copyright (c) 2023 Yuki Kimoto

MIT License
