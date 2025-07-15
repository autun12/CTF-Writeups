#ifndef Py_LIMITED_API
#ifndef Py_PARSETOK_H
#define Py_PARSETOK_H
#include "third_party/python/Include/grammar.h"
#include "third_party/python/Include/node.h"
#include "third_party/python/Include/object.h"
COSMOPOLITAN_C_START_

typedef struct {
    int error;
#ifndef PGEN
    /* The filename is useless for pgen, see comment in tok_state structure */
    PyObject *filename;
#endif
    int lineno;
    int offset;
    char *text;                 /* UTF-8-encoded string */
    int token;
    int expected;
} perrdetail;

#if 0
#define PyPARSE_YIELD_IS_KEYWORD	0x0001
#endif

#define PyPARSE_DONT_IMPLY_DEDENT	0x0002

#if 0
#define PyPARSE_WITH_IS_KEYWORD		0x0003
#define PyPARSE_PRINT_IS_FUNCTION       0x0004
#define PyPARSE_UNICODE_LITERALS        0x0008
#endif

#define PyPARSE_IGNORE_COOKIE 0x0010
#define PyPARSE_BARRY_AS_BDFL 0x0020

node * PyParser_ParseString(const char *, grammar *, int,
                                              perrdetail *);
node * PyParser_ParseFile (FILE *, const char *, grammar *, int,
                                             const char *, const char *,
                                             perrdetail *);

node * PyParser_ParseStringFlags(const char *, grammar *, int,
                                              perrdetail *, int);
node * PyParser_ParseFileFlags(
    FILE *fp,
    const char *filename,       /* decoded from the filesystem encoding */
    const char *enc,
    grammar *g,
    int start,
    const char *ps1,
    const char *ps2,
    perrdetail *err_ret,
    int flags);
node * PyParser_ParseFileFlagsEx(
    FILE *fp,
    const char *filename,       /* decoded from the filesystem encoding */
    const char *enc,
    grammar *g,
    int start,
    const char *ps1,
    const char *ps2,
    perrdetail *err_ret,
    int *flags);
node * PyParser_ParseFileObject(
    FILE *fp,
    PyObject *filename,
    const char *enc,
    grammar *g,
    int start,
    const char *ps1,
    const char *ps2,
    perrdetail *err_ret,
    int *flags);

node * PyParser_ParseStringFlagsFilename(
    const char *s,
    const char *filename,       /* decoded from the filesystem encoding */
    grammar *g,
    int start,
    perrdetail *err_ret,
    int flags);
node * PyParser_ParseStringFlagsFilenameEx(
    const char *s,
    const char *filename,       /* decoded from the filesystem encoding */
    grammar *g,
    int start,
    perrdetail *err_ret,
    int *flags);
node * PyParser_ParseStringObject(
    const char *s,
    PyObject *filename,
    grammar *g,
    int start,
    perrdetail *err_ret,
    int *flags);

/* Note that the following functions are defined in pythonrun.c,
   not in parsetok.c */
void PyParser_SetError(perrdetail *);
void PyParser_ClearError(perrdetail *);

COSMOPOLITAN_C_END_
#endif /* !Py_PARSETOK_H */
#endif /* !Py_LIMITED_API */
