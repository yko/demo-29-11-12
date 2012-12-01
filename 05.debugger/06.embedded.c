#include <EXTERN.h>
#include <perl.h>

// use make to compile this
// and then try
// PERL5OPT=-d ./06.embedded

static PerlInterpreter *my_perl;
void xs_init(pTHX);

main (int argc, char **argv, char **env)
{
    //  the same as: perl -e 'print "1\n";
    char *embedding[] = { "", "-e", "print \"1\n\"" };

    PERL_SYS_INIT3(&argc,&argv,&env);
    my_perl = perl_alloc();
    perl_construct( my_perl );

    // xs_init required for dynamic loading. debugger won't work otherwise
    perl_parse(my_perl, xs_init, 3, embedding, NULL);

    PL_exit_flags |= PERL_EXIT_DESTRUCT_END;

    // Try to comment this line
    perl_run(my_perl);

    /** Treat $a as an integer **/
    eval_pv("$a = 3; $a **= 2", TRUE);

    printf("a = %d\n", SvIV(get_sv("a", 0)));

    /** Treat $a as a float **/
    eval_pv("$a = 3.14; $a **= 2", TRUE);

    printf("a = %f\n", SvNV(get_sv("a", 0)));

    /** Treat $a as a string **/
    eval_pv("$a = 'rekcaH lreP rehtonA tsuJ'; $a = reverse($a);", TRUE);

    printf("a = %s\n", SvPV_nolen(get_sv("a", 0)));

    perl_destruct(my_perl);
    perl_free(my_perl);
    PERL_SYS_TERM();
}

EXTERN_C void boot_DynaLoader (pTHX_ CV* cv);
void xs_init(pTHX)
{
    char *file = __FILE__;
    newXS("DynaLoader::boot_DynaLoader", boot_DynaLoader, file);
}
