# 1 "fuzzfis.c"
# 1 "/cygdrive/e/GDrive/Proyects/FuzzLib/fuzz_lib//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "fuzzfis.c"
# 1 "fuzzfis.h" 1
# 32 "fuzzfis.h"
# 1 "/usr/include/math.h" 1 3 4




# 1 "/usr/include/sys/reent.h" 1 3 4
# 13 "/usr/include/sys/reent.h" 3 4
# 1 "/usr/include/_ansi.h" 1 3 4
# 15 "/usr/include/_ansi.h" 3 4
# 1 "/usr/include/newlib.h" 1 3 4
# 16 "/usr/include/_ansi.h" 2 3 4
# 1 "/usr/include/sys/config.h" 1 3 4



# 1 "/usr/include/machine/ieeefp.h" 1 3 4
# 5 "/usr/include/sys/config.h" 2 3 4
# 1 "/usr/include/sys/features.h" 1 3 4
# 6 "/usr/include/sys/config.h" 2 3 4
# 234 "/usr/include/sys/config.h" 3 4
# 1 "/usr/include/cygwin/config.h" 1 3 4
# 235 "/usr/include/sys/config.h" 2 3 4
# 17 "/usr/include/_ansi.h" 2 3 4
# 14 "/usr/include/sys/reent.h" 2 3 4
# 1 "/usr/lib/gcc/x86_64-pc-cygwin/4.9.3/include/stddef.h" 1 3 4
# 147 "/usr/lib/gcc/x86_64-pc-cygwin/4.9.3/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 212 "/usr/lib/gcc/x86_64-pc-cygwin/4.9.3/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "/usr/lib/gcc/x86_64-pc-cygwin/4.9.3/include/stddef.h" 3 4
typedef short unsigned int wchar_t;
# 15 "/usr/include/sys/reent.h" 2 3 4
# 1 "/usr/include/sys/_types.h" 1 3 4
# 12 "/usr/include/sys/_types.h" 3 4
# 1 "/usr/include/machine/_types.h" 1 3 4






# 1 "/usr/include/machine/_default_types.h" 1 3 4
# 27 "/usr/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 41 "/usr/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 63 "/usr/include/machine/_default_types.h" 3 4
typedef int __int32_t;

typedef unsigned int __uint32_t;
# 89 "/usr/include/machine/_default_types.h" 3 4
typedef long int __int64_t;

typedef long unsigned int __uint64_t;
# 120 "/usr/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 146 "/usr/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 168 "/usr/include/machine/_default_types.h" 3 4
typedef int __int_least32_t;

typedef unsigned int __uint_least32_t;
# 186 "/usr/include/machine/_default_types.h" 3 4
typedef long int __int_least64_t;

typedef long unsigned int __uint_least64_t;
# 200 "/usr/include/machine/_default_types.h" 3 4
typedef long int __intptr_t;

typedef long unsigned int __uintptr_t;
# 8 "/usr/include/machine/_types.h" 2 3 4
# 13 "/usr/include/sys/_types.h" 2 3 4
# 1 "/usr/include/sys/lock.h" 1 3 4
# 14 "/usr/include/sys/lock.h" 3 4
typedef void *_LOCK_T;
# 44 "/usr/include/sys/lock.h" 3 4
void __cygwin_lock_init(_LOCK_T *);
void __cygwin_lock_init_recursive(_LOCK_T *);
void __cygwin_lock_fini(_LOCK_T *);
void __cygwin_lock_lock(_LOCK_T *);
int __cygwin_lock_trylock(_LOCK_T *);
void __cygwin_lock_unlock(_LOCK_T *);
# 14 "/usr/include/sys/_types.h" 2 3 4


typedef long _off_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;





typedef _off64_t _fpos64_t;
# 55 "/usr/include/sys/_types.h" 3 4
typedef long signed int _ssize_t;
# 67 "/usr/include/sys/_types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-pc-cygwin/4.9.3/include/stddef.h" 1 3 4
# 353 "/usr/lib/gcc/x86_64-pc-cygwin/4.9.3/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 68 "/usr/include/sys/_types.h" 2 3 4



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_T _flock_t;




typedef void *_iconv_t;
# 16 "/usr/include/sys/reent.h" 2 3 4
# 25 "/usr/include/sys/reent.h" 3 4
typedef unsigned int __ULong;
# 38 "/usr/include/sys/reent.h" 3 4
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 91 "/usr/include/sys/reent.h" 3 4
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 115 "/usr/include/sys/reent.h" 3 4
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 179 "/usr/include/sys/reent.h" 3 4
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  _ssize_t (__attribute__((__cdecl__)) * _read) (struct _reent *, void *, char *, size_t)
                                          ;
  _ssize_t (__attribute__((__cdecl__)) * _write) (struct _reent *, void *, const char *, size_t)

                                   ;
  _fpos_t (__attribute__((__cdecl__)) * _seek) (struct _reent *, void *, _fpos_t, int);
  int (__attribute__((__cdecl__)) * _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 237 "/usr/include/sys/reent.h" 3 4
struct __sFILE64 {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;

  struct _reent *_data;


  void * _cookie;

  _ssize_t (__attribute__((__cdecl__)) * _read) (struct _reent *, void *, char *, size_t)
                                          ;
  _ssize_t (__attribute__((__cdecl__)) * _write) (struct _reent *, void *, const char *, size_t)

                                   ;
  _fpos_t (__attribute__((__cdecl__)) * _seek) (struct _reent *, void *, _fpos_t, int);
  int (__attribute__((__cdecl__)) * _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _flags2;

  _off64_t _offset;
  _fpos64_t (__attribute__((__cdecl__)) * _seek64) (struct _reent *, void *, _fpos64_t, int);


  _flock_t _lock;

  _mbstate_t _mbstate;
};
typedef struct __sFILE64 __FILE;





struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 317 "/usr/include/sys/reent.h" 3 4
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 569 "/usr/include/sys/reent.h" 3 4
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (__attribute__((__cdecl__)) * __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 762 "/usr/include/sys/reent.h" 3 4
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __attribute__((__cdecl__)) __getreent (void);
# 6 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/machine/ieeefp.h" 1 3 4
# 7 "/usr/include/math.h" 2 3 4
# 1 "/usr/include/_ansi.h" 1 3 4
# 8 "/usr/include/math.h" 2 3 4






union __dmath
{
  double d;
  __ULong i[2];
};

union __fmath
{
  float f;
  __ULong i[1];
};


union __ldmath
{
  long double ld;
  __ULong i[4];
};
# 108 "/usr/include/math.h" 3 4
extern double atan (double);
extern double cos (double);
extern double sin (double);
extern double tan (double);
extern double tanh (double);
extern double frexp (double, int *);
extern double modf (double, double *);
extern double ceil (double);
extern double fabs (double);
extern double floor (double);






extern double acos (double);
extern double asin (double);
extern double atan2 (double, double);
extern double cosh (double);
extern double sinh (double);
extern double exp (double);
extern double ldexp (double, int);
extern double log (double);
extern double log10 (double);
extern double pow (double, double);
extern double sqrt (double);
extern double fmod (double, double);
# 155 "/usr/include/math.h" 3 4
    typedef float float_t;
    typedef double double_t;
# 199 "/usr/include/math.h" 3 4
extern int __isinff (float x);
extern int __isinfd (double x);
extern int __isnanf (float x);
extern int __isnand (double x);
extern int __fpclassifyf (float x);
extern int __fpclassifyd (double x);
extern int __signbitf (float x);
extern int __signbitd (double x);
# 259 "/usr/include/math.h" 3 4
extern int finitel (long double);



extern double infinity (void);
extern double nan (const char *);
extern int finite (double);
extern double copysign (double, double);
extern double logb (double);
extern int ilogb (double);

extern double asinh (double);
extern double cbrt (double);
extern double nextafter (double, double);
extern double rint (double);
extern double scalbn (double, int);

extern double exp2 (double);
extern double scalbln (double, long int);
extern double tgamma (double);
extern double nearbyint (double);
extern long int lrint (double);
extern long long int llrint (double);
extern double round (double);
extern long int lround (double);
extern long long int llround (double);
extern double trunc (double);
extern double remquo (double, double, int *);
extern double fdim (double, double);
extern double fmax (double, double);
extern double fmin (double, double);
extern double fma (double, double, double);


extern double log1p (double);
extern double expm1 (double);



extern double acosh (double);
extern double atanh (double);
extern double remainder (double, double);
extern double gamma (double);
extern double lgamma (double);
extern double erf (double);
extern double erfc (double);
extern double log2 (double);





extern double hypot (double, double);






extern float atanf (float);
extern float cosf (float);
extern float sinf (float);
extern float tanf (float);
extern float tanhf (float);
extern float frexpf (float, int *);
extern float modff (float, float *);
extern float ceilf (float);
extern float fabsf (float);
extern float floorf (float);


extern float acosf (float);
extern float asinf (float);
extern float atan2f (float, float);
extern float coshf (float);
extern float sinhf (float);
extern float expf (float);
extern float ldexpf (float, int);
extern float logf (float);
extern float log10f (float);
extern float powf (float, float);
extern float sqrtf (float);
extern float fmodf (float, float);




extern float exp2f (float);
extern float scalblnf (float, long int);
extern float tgammaf (float);
extern float nearbyintf (float);
extern long int lrintf (float);
extern long long int llrintf (float);
extern float roundf (float);
extern long int lroundf (float);
extern long long int llroundf (float);
extern float truncf (float);
extern float remquof (float, float, int *);
extern float fdimf (float, float);
extern float fmaxf (float, float);
extern float fminf (float, float);
extern float fmaf (float, float, float);

extern float infinityf (void);
extern float nanf (const char *);
extern int finitef (float);
extern float copysignf (float, float);
extern float logbf (float);
extern int ilogbf (float);

extern float asinhf (float);
extern float cbrtf (float);
extern float nextafterf (float, float);
extern float rintf (float);
extern float scalbnf (float, int);
extern float log1pf (float);
extern float expm1f (float);


extern float acoshf (float);
extern float atanhf (float);
extern float remainderf (float, float);
extern float gammaf (float);
extern float lgammaf (float);
extern float erff (float);
extern float erfcf (float);
extern float log2f (float);
extern float hypotf (float, float);
# 461 "/usr/include/math.h" 3 4
extern long double hypotl (long double, long double);
extern long double sqrtl (long double);
# 475 "/usr/include/math.h" 3 4
extern double drem (double, double);
extern void sincos (double, double *, double *);
extern double gamma_r (double, int *);
extern double lgamma_r (double, int *);

extern double y0 (double);
extern double y1 (double);
extern double yn (int, double);
extern double j0 (double);
extern double j1 (double);
extern double jn (int, double);

extern float dremf (float, float);
extern void sincosf (float, float *, float *);
extern float gammaf_r (float, int *);
extern float lgammaf_r (float, int *);

extern float y0f (float);
extern float y1f (float);
extern float ynf (int, float);
extern float j0f (float);
extern float j1f (float);
extern float jnf (int, float);



extern double exp10 (double);


extern double pow10 (double);


extern float exp10f (float);


extern float pow10f (float);
# 520 "/usr/include/math.h" 3 4
extern int *__signgam (void);
# 531 "/usr/include/math.h" 3 4
struct exception

{
  int type;
  char *name;
  double arg1;
  double arg2;
  double retval;
  int err;
};




extern int matherr (struct exception *e);
# 595 "/usr/include/math.h" 3 4
enum __fdlibm_version
{
  __fdlibm_ieee = -1,
  __fdlibm_svid,
  __fdlibm_xopen,
  __fdlibm_posix
};




extern __attribute__((dllimport)) enum __fdlibm_version __fdlib_version;
# 615 "/usr/include/math.h" 3 4

# 33 "fuzzfis.h" 2
# 48 "fuzzfis.h"
typedef float fuzz_real_t;
typedef enum{trimf, trapmf, gbellmf, gaussmf, gauss2mf, sigmf, dsigmf, psigmf, pimf, smf, zmf, singletonmf}fuzz_mf_t;
typedef enum{Mamdani=0, Sugeno=1}fuzz_fis_type_t;
typedef unsigned char fuzz_input_t;
typedef unsigned char fuzz_output_t;
typedef unsigned char fuzz_var_t;
typedef int fuzz_rules_t;

typedef fuzz_real_t (*SugenoFcn)(fuzz_real_t*);
typedef fuzz_real_t (*FuzzMethod)(fuzz_real_t, fuzz_real_t);

typedef struct{
    fuzz_real_t xmin, xmax;
    fuzz_real_t value;
}FuzzIO_t;




typedef struct{
    unsigned char ioindex;
    unsigned char tag;
    fuzz_mf_t shape;
    SugenoFcn g;
    fuzz_real_t points[4];
    fuzz_real_t fuzzval;
}FuzzMF_t;

#pragma pack(1)
typedef struct{
    fuzz_fis_type_t type;
    FuzzIO_t *input;
    FuzzIO_t *output;
    FuzzMF_t *inputmf;
    FuzzMF_t *outputmf;
    unsigned char rule_cols;
    unsigned char ninputs;
    unsigned char noutputs;
    unsigned char nmfinputs;
    unsigned char nmfoutputs;
    unsigned int evalpoints;
    FuzzMethod FuzzAND,FuzzOR;
}FuzzFIS_t;

fuzz_real_t FuzzMin(fuzz_real_t a, fuzz_real_t b);
fuzz_real_t FuzzMax(fuzz_real_t a, fuzz_real_t b);
fuzz_real_t FuzzProd(fuzz_real_t a, fuzz_real_t b);
fuzz_real_t FuzzProbOR(fuzz_real_t a, fuzz_real_t b);
fuzz_real_t __fuzz_mf(fuzz_mf_t mf,fuzz_real_t x,fuzz_real_t *points);


void FuzzFisSetup(FuzzFIS_t *obj, fuzz_fis_type_t type, unsigned int evalpoints,
                  FuzzMethod AND_Method, FuzzMethod OR_Method,
                  FuzzIO_t *inputs, unsigned char nins, FuzzIO_t *outputs, unsigned char nouts,
                  FuzzMF_t *mfinputs, unsigned char nmfins, FuzzMF_t *mfoutputs, unsigned char nmfouts);

void FuzzFuzz(FuzzFIS_t *obj);

int FuzzyIS(FuzzFIS_t *obj, const short *rules, unsigned char n);
void FuzzAddIO(FuzzIO_t *iovar, unsigned char tag, fuzz_real_t umin, fuzz_real_t umax);
void FuzzAddMF(FuzzMF_t *mfvar, unsigned char iotag, unsigned char mftag, fuzz_mf_t shape, fuzz_real_t a, fuzz_real_t b, fuzz_real_t c, fuzz_real_t d);
void FuzzAddOutputFunction(FuzzMF_t *mfvar, unsigned char iotag, unsigned char mftag, SugenoFcn fcn);
fuzz_real_t ParseFuzzValue(FuzzMF_t *mfio, short index);



int FuzzDeFuzz(FuzzFIS_t *obj);
# 2 "fuzzfis.c" 2


void FuzzFisSetup(FuzzFIS_t *obj, fuzz_fis_type_t type, unsigned int evalpoints,
                  FuzzMethod AND_Method, FuzzMethod OR_Method,
                  FuzzIO_t *inputs, unsigned char nins, FuzzIO_t *outputs, unsigned char nouts,
                  FuzzMF_t *mfinputs, unsigned char nmfins, FuzzMF_t *mfoutputs, unsigned char nmfouts){
    obj->type = type;
    obj->evalpoints = evalpoints;
    obj->ninputs = nins;
    obj->noutputs = nouts;
    obj->nmfinputs = nmfins;
    obj->nmfoutputs = nmfouts;
    obj->FuzzAND = AND_Method;
    obj->FuzzOR = OR_Method;
    obj->input = inputs;
    obj->output = outputs;
    obj->inputmf = mfinputs;
    obj->outputmf = mfoutputs;
    obj->rule_cols = 2*nins + (nins-1) +3*nouts ;
}

void FuzzAddMF(FuzzMF_t *mfvar, unsigned char iotag, unsigned char mftag, fuzz_mf_t shape, fuzz_real_t a, fuzz_real_t b, fuzz_real_t c, fuzz_real_t d){
    mfvar[mftag].shape = shape;
    mfvar[mftag].ioindex = iotag;
    mfvar[mftag].points[0]=a;
    mfvar[mftag].points[1]=b;
    mfvar[mftag].points[2]=c;
    mfvar[mftag].points[3]=d;
    mfvar[mftag].fuzzval = 0.0;
}

void FuzzAddOutputFunction(FuzzMF_t *mfvar, unsigned char iotag, unsigned char mftag, SugenoFcn fcn){
    mfvar[mftag].g = fcn;
    mfvar[mftag].ioindex = iotag;
    mfvar[mftag].fuzzval = 0.0;
}

void FuzzAddIO(FuzzIO_t *iovar, unsigned char tag, fuzz_real_t umin, fuzz_real_t umax){
    iovar[tag].xmin = umin;
    iovar[tag].xmax = umax;
}

void FuzzFuzz(FuzzFIS_t *obj){
    unsigned char i;
    for(i=0;i<obj->ninputs;i++){
        if(obj->input[i].value > obj->input[i].xmax) obj->input[i].value = obj->input[i].xmax;
        if(obj->input[i].value < obj->input[i].xmin) obj->input[i].value = obj->input[i].xmin;
    }
    for(i=0;i<obj->nmfinputs;i++){
        obj->inputmf[i].fuzzval = __fuzz_mf( obj->inputmf[i].shape,
                                             obj->input[ obj->inputmf[i].ioindex ].value,
                                             obj->inputmf[i].points);

    }
}

fuzz_real_t ParseFuzzValue(FuzzMF_t *mfio, short index){
    unsigned char not;
    if ((not=index<0)) index=-index;
    fuzz_real_t y = mfio[index-1].fuzzval;
    y = (y>1.0)? 1.0 : ((y<0.0)? 0.0: y);
    if(not) return 1.0 - y;
    else return y;
}

int FuzzyIS(FuzzFIS_t *obj, const short *rules, unsigned char n){
    unsigned char i,j;


    unsigned char RULESTATE=(0);
    unsigned char input_index=0;
    short mfinput_index=0;
    unsigned char output_index=0;
    short mfoutput_index=0;
    short conector, last_conector;
    fuzz_real_t rule_strength = 0.0;
    unsigned int index;

    for(i=0;i<n;i++){
        RULESTATE=(0);
        last_conector = -1;
        rule_strength = 0.0;
        for(j=0;j<obj->rule_cols;j++){
            index = i*obj->rule_cols + j;
            if (RULESTATE==(0)){
                input_index = rules[index];
                mfinput_index = rules[index+1];
                conector = rules[index+2];
                switch(last_conector){
                    case (-0x7FFE):
                        rule_strength = obj->FuzzAND(rule_strength, ParseFuzzValue(obj->inputmf, mfinput_index));
                        break;
                    case (-0x7FFD):
                        rule_strength = obj->FuzzOR(rule_strength, ParseFuzzValue(obj->inputmf, mfinput_index));
                        break;
                    case -1:
                        rule_strength = ParseFuzzValue(obj->inputmf, mfinput_index);
                        break;
                    default:
                        return -1;
                        break;
                }

                if (input_index<0 ||input_index>obj->ninputs) return -1;

                if(conector==(-0x7FFE) || conector==(-0x7FFD)){
                    last_conector = conector;
                    RULESTATE = (0);
                    j+=2;
                    continue;
                }
                else if(conector==(-0x7FFC)){
                    RULESTATE = (2);
                    j+=2;
                    continue;
                }
                else return -1;
            }
            else if (RULESTATE==(2)){
                output_index = rules[index];
                mfoutput_index = rules[index+1]-1;
                conector = (obj->noutputs>1)? rules[index+2] : -1;
                j+=2;
                switch(obj->type){
                    case Mamdani:
                        obj->outputmf[mfoutput_index].fuzzval = FuzzMax(obj->outputmf[mfoutput_index].fuzzval, rule_strength);
                        break;
                    case Sugeno:

                        break;
                    default: return -1;
                }

                if(conector != (-0x7FFE) ) break;
            }
        }
    }
    return 0;
}

int FuzzDeFuzz(FuzzFIS_t *obj){
    int i,j;
    fuzz_real_t x;
    fuzz_real_t z;
    fuzz_real_t fx;
    fuzz_real_t intfx,intxfx;
    fuzz_real_t res;
    unsigned char tag;
    for(tag=0;tag<obj->noutputs;tag++){
        intfx=intxfx=0.0;
        res = ((obj->output[tag].xmax - obj->output[tag].xmin)/obj->evalpoints);
        for(i=0;i<obj->evalpoints+1;i++){
            x = obj->output[tag].xmin + (i*res);
            if(x > obj->output[tag].xmax) x = obj->output[tag].xmax;
            fx = 0.0;
            for(j=0;j<obj->nmfoutputs;j++){
                if(obj->outputmf[j].ioindex == tag){
                    z = __fuzz_mf( obj->outputmf[j].shape, x , obj->outputmf[j].points);
                    fx = FuzzMax( fx, (z>obj->outputmf[j].fuzzval)? obj->outputmf[j].fuzzval : z );
                }
            }
            intxfx+=x*fx;
            intfx+=fx;
            if(x >= obj->output[tag].xmax) break;
        }
        obj->output[tag].value = (intxfx/intfx);
    }
}

fuzz_real_t __fuzz_mf(fuzz_mf_t mf,fuzz_real_t x,fuzz_real_t *points){
    fuzz_real_t a,b,c,d;
    fuzz_real_t temp,temp1,temp2;
    switch(mf){
        case trimf:
            a = points[0];
            b = points[1];
            c = points[2];
            return FuzzMax( FuzzMin( (x-a)/(b-a) , (c-x)/(c-b) ) , 0.0 );
        case trapmf:
            a = points[0];
            b = points[1];
            c = points[2];
            d = points[3];
            return FuzzMax( FuzzMin( FuzzMin( (x-a)/(b-a) , 1 ) , (d-x)/(d-c) ) , 0.0 );
        case gbellmf:
            a = points[0];
            b = points[1];
            return ( 1.0/ (1.0 + pow( fabs( (x-c)/a ), 2*b ) ) );
        case gaussmf:
            a = points[0];
            b = points[1];
            temp = (x-b)/a;
            return exp( -0.5*temp*temp );
        case gauss2mf:
            a = points[0];
            b = points[1];
            c = points[2];
            d = points[3];
            temp1 = (x<=b);
            temp2 = (x-b);
            temp = exp((-temp2*temp2)/(2*a*a))*temp1 + (1-temp1);
            temp1 = (x>=d);
            temp2 = (x-d);
            temp *= exp((-temp2*temp2)/(2*c*c))*temp1 + (1-temp1);
            return temp;
        case sigmf:
            a = points[0];
            b = points[1];
            return ( 1.0/( 1.0 + exp(-a*(x-b)) ) );
        case dsigmf:
            return fabs( __fuzz_mf(sigmf, x, points) - __fuzz_mf(sigmf, x, points+2) );
        case psigmf:
            return ( __fuzz_mf(sigmf, x, points) * __fuzz_mf(sigmf, x, points+2) );
        case pimf:
            return ( __fuzz_mf(smf, x, points) * __fuzz_mf( zmf, x, points+2) );
        case smf:
            a = points[0];
            b = points[1];
            if (x<=a) return 0.0;
            if (x>=a && x<=((a+b)/2)){
                temp = (x-a)/(b-a);
                return (2.0*temp*temp);
            }
            if (x<=b && x>=((a+b)/2)){
                temp = (x-b)/(b-a);
                return (1.0 - (2.0*temp*temp));
            }
            if (x>=b) return 1.0;
            return 0.0;
        case zmf:
            a = points[0];
            b = points[1];
            if (x<=a) return 1.0;
            if (x>=a && x<=((a+b)/2)) return (1.0 - (2.0*pow( (x-a)/(b-a) , 2 )));
            if (x<=b && x>=((a+b)/2)) return (2.0*pow( (x-b)/(b-a) , 2 ));
            if (x>=b) return 0.0;
            return 0.0;
        case singletonmf:
            a = points[0];
            return ( (x==a)? 1.0 : 0.0 );
        default:
            return 0.0;
    }
}

fuzz_real_t FuzzMin(fuzz_real_t a, fuzz_real_t b){
    fuzz_real_t y = ((a<b)? a : b);
    if (y<0.0) y = 0.0;
    if (y>1.0) y = 1.0;
    return y;
}

fuzz_real_t FuzzMax(fuzz_real_t a, fuzz_real_t b){
    fuzz_real_t y = ((a>b)? a : b);
    if (y<0.0) y = 0.0;
    if (y>1.0) y = 1.0;
    return y;
}

fuzz_real_t FuzzProd(fuzz_real_t a, fuzz_real_t b){
    fuzz_real_t y = a*b;
    if (y<0.0) y = 0.0;
    if (y>1.0) y = 1.0;
    return y;
}

fuzz_real_t FuzzProbOR(fuzz_real_t a, fuzz_real_t b){
    fuzz_real_t y = a + b - a*b;
    if (y<0.0) y = 0.0;
    if (y>1.0) y = 1.0;
    return y;
}
