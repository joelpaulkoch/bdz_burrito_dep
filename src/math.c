#include <memory.h>
#include <erl_nif.h>

static ERL_NIF_TERM sum(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[])
{
    int x;
    if(!enif_get_int(env, argv[0], &x)){
        return enif_make_badarg(env);
    }

    int y;
    if(!enif_get_int(env, argv[1], &y)){
        return enif_make_badarg(env);
    }

    int result = x + y;

    return enif_make_int(env, result);
}

static ErlNifFunc nif_funcs[] =
{
    {"sum", 2, sum}
};

ERL_NIF_INIT(Elixir.BdzBurritoDep.Math, nif_funcs, NULL, NULL, NULL, NULL)
