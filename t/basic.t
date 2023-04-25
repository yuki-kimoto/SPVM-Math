use Test::More;

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/lib";
BEGIN { $ENV{SPVM_BUILD_DIR} = "$FindBin::Bin/.spvm_build"; }

use SPVM 'TestCase::Math';
use SPVM 'Math';

use SPVM 'Fn';
use SPVM::Math;

use POSIX();
use Math::Complex;

use Math::Trig 'pi';

my $BYTE_MAX = 127;
my $BYTE_MIN = -128;
my $SHORT_MAX = 32767;
my $SHORT_MIN = -32768;
my $INT_MAX = 2147483647;
my $INT_MIN = -2147483648;
my $LONG_MAX = 9223372036854775807;
my $LONG_MIN = -9223372036854775808;
my $FLOAT_PRECICE = 16384.5;
my $DOUBLE_PRECICE = 65536.5;

# Positive infinity(unix like system : inf, Windows : 1.#INF)
my $POSITIVE_INFINITY = 9**9**9;

my $NaN = 9**9**9 / 9**9**9;

my $nan_re = qr/(nan|ind)/i;



# Start objects count
my $start_memory_blocks_count = SPVM::api->get_memory_blocks_count();

# PI
{
  ok(SPVM::TestCase::Math->test_PI);
  if ($] >= 5.022) {
    my $val = eval "0x1.921fb54442d18p+1";
    cmp_ok(SPVM::Math->PI, '==', $val);
  }
}

# E
{
  ok(SPVM::TestCase::Math->test_E);
  if ($] >= 5.022) {
    my $val = eval "0x1.5bf0a8b145769p+1";
    cmp_ok(SPVM::Math->E, '==', $val);
  }
}

# Trigonometric functions
ok(SPVM::TestCase::Math->test_cos);
ok(SPVM::TestCase::Math->test_cosf);
ok(SPVM::TestCase::Math->test_sin);
ok(SPVM::TestCase::Math->test_sinf);
ok(SPVM::TestCase::Math->test_tan);
ok(SPVM::TestCase::Math->test_tanf);
ok(SPVM::TestCase::Math->test_acos);
ok(SPVM::TestCase::Math->test_acosf);
ok(SPVM::TestCase::Math->test_asin);
ok(SPVM::TestCase::Math->test_asinf);
ok(SPVM::TestCase::Math->test_atan);
ok(SPVM::TestCase::Math->test_atanf);

# Hyperbolic functions
ok(SPVM::TestCase::Math->test_cosh);
ok(SPVM::TestCase::Math->test_coshf);
ok(SPVM::TestCase::Math->test_sinh);
ok(SPVM::TestCase::Math->test_sinhf);
ok(SPVM::TestCase::Math->test_tanh);
ok(SPVM::TestCase::Math->test_tanhf);
ok(SPVM::TestCase::Math->test_acosh);
ok(SPVM::TestCase::Math->test_acoshf);
ok(SPVM::TestCase::Math->test_asinh);
ok(SPVM::TestCase::Math->test_asinhf);
ok(SPVM::TestCase::Math->test_atanh);
ok(SPVM::TestCase::Math->test_atanhf);

# Exponential and logarithmic functions
ok(SPVM::TestCase::Math->test_exp);
ok(SPVM::TestCase::Math->test_expf);
ok(SPVM::TestCase::Math->test_exp2);
ok(SPVM::TestCase::Math->test_exp2f);
ok(SPVM::TestCase::Math->test_expm1);
ok(SPVM::TestCase::Math->test_expm1f);
ok(SPVM::TestCase::Math->test_frexp);
ok(SPVM::TestCase::Math->test_frexpf);
ok(SPVM::TestCase::Math->test_ilogb);
ok(SPVM::TestCase::Math->test_ilogbf);
ok(SPVM::TestCase::Math->test_ldexp);
ok(SPVM::TestCase::Math->test_ldexpf);
ok(SPVM::TestCase::Math->test_log);
ok(SPVM::TestCase::Math->test_logf);
ok(SPVM::TestCase::Math->test_log10);
ok(SPVM::TestCase::Math->test_log10f);
ok(SPVM::TestCase::Math->test_log1p);
ok(SPVM::TestCase::Math->test_log1pf);
ok(SPVM::TestCase::Math->test_log2);
ok(SPVM::TestCase::Math->test_log2f);
ok(SPVM::TestCase::Math->test_logb);
ok(SPVM::TestCase::Math->test_logbf);
ok(SPVM::TestCase::Math->test_modf);
ok(SPVM::TestCase::Math->test_modff);
ok(SPVM::TestCase::Math->test_scalbn);
ok(SPVM::TestCase::Math->test_scalbnf);
ok(SPVM::TestCase::Math->test_scalbln);
ok(SPVM::TestCase::Math->test_scalblnf);

#absolute value functions
{
  ok(SPVM::TestCase::Math->test_abs);
  ok(SPVM::TestCase::Math->test_labs);
  ok(SPVM::TestCase::Math->test_fabs);
  ok(SPVM::TestCase::Math->test_fabsf);
}

# Power function
ok(SPVM::TestCase::Math->test_cbrt);
ok(SPVM::TestCase::Math->test_cbrtf);
ok(SPVM::TestCase::Math->test_hypot);
ok(SPVM::TestCase::Math->test_hypotf);
ok(SPVM::TestCase::Math->test_pow);
ok(SPVM::TestCase::Math->test_powf);
ok(SPVM::TestCase::Math->test_sqrt);
ok(SPVM::TestCase::Math->test_sqrtf);

# Error function and gamma functions
ok(SPVM::TestCase::Math->test_erf);
ok(SPVM::TestCase::Math->test_erff);
ok(SPVM::TestCase::Math->test_erfc);
ok(SPVM::TestCase::Math->test_erfcf);
ok(SPVM::TestCase::Math->test_lgamma);
ok(SPVM::TestCase::Math->test_lgammaf);
ok(SPVM::TestCase::Math->test_tgamma);
ok(SPVM::TestCase::Math->test_tgammaf);

# Nearest integer functions
ok(SPVM::TestCase::Math->test_ceil);
ok(SPVM::TestCase::Math->test_ceilf);
ok(SPVM::TestCase::Math->test_floor);
ok(SPVM::TestCase::Math->test_floorf);
ok(SPVM::TestCase::Math->test_nearbyint);
ok(SPVM::TestCase::Math->test_nearbyintf);
ok(SPVM::TestCase::Math->test_round);
ok(SPVM::TestCase::Math->test_roundf);
ok(SPVM::TestCase::Math->test_lround);
ok(SPVM::TestCase::Math->test_lroundf);
ok(SPVM::TestCase::Math->test_trunc);
ok(SPVM::TestCase::Math->test_truncf);

# Surplus functions
ok(SPVM::TestCase::Math->test_fmod);
ok(SPVM::TestCase::Math->test_fmodf);
ok(SPVM::TestCase::Math->test_remainder);
ok(SPVM::TestCase::Math->test_remainderf);
ok(SPVM::TestCase::Math->test_remquo);
ok(SPVM::TestCase::Math->test_remquof);

# Real number operation functions
ok(SPVM::TestCase::Math->test_copysign);
ok(SPVM::TestCase::Math->test_copysignf);
ok(SPVM::TestCase::Math->test_nan);
ok(SPVM::TestCase::Math->test_nanf);
ok(SPVM::TestCase::Math->test_nextafter);
ok(SPVM::TestCase::Math->test_nextafterf);
ok(SPVM::TestCase::Math->test_nexttoward);
ok(SPVM::TestCase::Math->test_nexttowardf);

# Maximum, minimum and positive difference functions
ok(SPVM::TestCase::Math->test_fdim);
ok(SPVM::TestCase::Math->test_fdimf);
ok(SPVM::TestCase::Math->test_fmax);
ok(SPVM::TestCase::Math->test_fmaxf);
ok(SPVM::TestCase::Math->test_fmin);
ok(SPVM::TestCase::Math->test_fminf);

# Floating point multiplication and additions
ok(SPVM::TestCase::Math->test_fma);
ok(SPVM::TestCase::Math->test_fmaf);

# Classification
ok(SPVM::TestCase::Math->test_fpclassify);
ok(SPVM::TestCase::Math->test_fpclassifyf);
ok(SPVM::TestCase::Math->test_isfinite);
ok(SPVM::TestCase::Math->test_isfinitef);
ok(SPVM::TestCase::Math->test_isinf);
ok(SPVM::TestCase::Math->test_isinff);
ok(SPVM::TestCase::Math->test_isnan);
ok(SPVM::TestCase::Math->test_isnanf);
ok(SPVM::TestCase::Math->test_signbit);
ok(SPVM::TestCase::Math->test_signbitf);

# Comparison
ok(SPVM::TestCase::Math->test_isgreater);
ok(SPVM::TestCase::Math->test_isgreaterf);
ok(SPVM::TestCase::Math->test_isgreaterequal);
ok(SPVM::TestCase::Math->test_isgreaterequalf);
ok(SPVM::TestCase::Math->test_isless);
ok(SPVM::TestCase::Math->test_islessf);
ok(SPVM::TestCase::Math->test_islessequal);
ok(SPVM::TestCase::Math->test_islessequalf);
ok(SPVM::TestCase::Math->test_islessgreater);
ok(SPVM::TestCase::Math->test_islessgreaterf);
ok(SPVM::TestCase::Math->test_isunordered);
ok(SPVM::TestCase::Math->test_isunorderedf);

# Complex Operations
{
  ok(SPVM::TestCase::Math->test_complexf);
  ok(SPVM::TestCase::Math->test_complex);
  ok(SPVM::TestCase::Math->test_caddf);
  ok(SPVM::TestCase::Math->test_cadd);
  ok(SPVM::TestCase::Math->test_csubf);
  ok(SPVM::TestCase::Math->test_csub);
  ok(SPVM::TestCase::Math->test_cmulf);
  ok(SPVM::TestCase::Math->test_cmul);
  ok(SPVM::TestCase::Math->test_cscamulf);
  ok(SPVM::TestCase::Math->test_cscamul);
  ok(SPVM::TestCase::Math->test_cdivf);
  ok(SPVM::TestCase::Math->test_cdiv);
}

# Complex Functions
{
  ok(SPVM::TestCase::Math->test_cacos);
  ok(SPVM::TestCase::Math->test_cacosf);

  ok(SPVM::TestCase::Math->test_casin);
  ok(SPVM::TestCase::Math->test_casinf);
  
  ok(SPVM::TestCase::Math->test_catan);
  ok(SPVM::TestCase::Math->test_catanf);

  ok(SPVM::TestCase::Math->test_ccos);
  ok(SPVM::TestCase::Math->test_ccosf);

  ok(SPVM::TestCase::Math->test_csin);
  ok(SPVM::TestCase::Math->test_csinf);

  ok(SPVM::TestCase::Math->test_ctan);
  ok(SPVM::TestCase::Math->test_ctanf);

  ok(SPVM::TestCase::Math->test_cacosh);
  ok(SPVM::TestCase::Math->test_cacoshf);

  ok(SPVM::TestCase::Math->test_casinh);
  ok(SPVM::TestCase::Math->test_casinhf);
  
  ok(SPVM::TestCase::Math->test_catanh);
  ok(SPVM::TestCase::Math->test_catanhf);

  ok(SPVM::TestCase::Math->test_ccosh);
  ok(SPVM::TestCase::Math->test_ccoshf);

  ok(SPVM::TestCase::Math->test_csinh);
  ok(SPVM::TestCase::Math->test_csinhf);

  ok(SPVM::TestCase::Math->test_ctanh);
  ok(SPVM::TestCase::Math->test_ctanhf);

  ok(SPVM::TestCase::Math->test_clog);
  ok(SPVM::TestCase::Math->test_clogf);

  ok(SPVM::TestCase::Math->test_cabs);
  ok(SPVM::TestCase::Math->test_cabsf);

  ok(SPVM::TestCase::Math->test_carg);
  ok(SPVM::TestCase::Math->test_cargf);

  ok(SPVM::TestCase::Math->test_conj);
  ok(SPVM::TestCase::Math->test_conjf);

  ok(SPVM::TestCase::Math->test_cexp);
  ok(SPVM::TestCase::Math->test_cexpf);

  ok(SPVM::TestCase::Math->test_cpow);
  ok(SPVM::TestCase::Math->test_cpowf);

  ok(SPVM::TestCase::Math->test_csqrt);
  ok(SPVM::TestCase::Math->test_csqrtf);
}

# Version
{
  is($SPVM::Math::VERSION, SPVM::Fn->get_version_string('Math'));
}
# All object is freed
my $end_memory_blocks_count = SPVM::api->get_memory_blocks_count();
is($end_memory_blocks_count, $start_memory_blocks_count);

done_testing;
