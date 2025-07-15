#ifndef Py_LIMITED_API
#ifndef Py_GENOBJECT_H
#define Py_GENOBJECT_H
#include "third_party/python/Include/object.h"
COSMOPOLITAN_C_START_

struct _frame; /* Avoid including frameobject.h */

/* _PyGenObject_HEAD defines the initial segment of generator
   and coroutine objects. */
#define _PyGenObject_HEAD(prefix)                                           \
    PyObject_HEAD                                                           \
    /* Note: gi_frame can be NULL if the generator is "finished" */         \
    struct _frame *prefix##_frame;                                          \
    /* True if generator is being executed. */                              \
    char prefix##_running;                                                  \
    /* The code object backing the generator */                             \
    PyObject *prefix##_code;                                                \
    /* List of weak reference. */                                           \
    PyObject *prefix##_weakreflist;                                         \
    /* Name of the generator. */                                            \
    PyObject *prefix##_name;                                                \
    /* Qualified name of the generator. */                                  \
    PyObject *prefix##_qualname;

typedef struct {
    /* The gi_ prefix is intended to remind of generator-iterator. */
    _PyGenObject_HEAD(gi)
} PyGenObject;

extern PyTypeObject PyGen_Type;

#define PyGen_Check(op) PyObject_TypeCheck(op, &PyGen_Type)
#define PyGen_CheckExact(op) (Py_TYPE(op) == &PyGen_Type)

PyObject * PyGen_New(struct _frame *);
PyObject * PyGen_NewWithQualName(struct _frame *,
    PyObject *name, PyObject *qualname);
int PyGen_NeedsFinalizing(PyGenObject *);
int _PyGen_SetStopIterationValue(PyObject *);
int _PyGen_FetchStopIterationValue(PyObject **);
PyObject * _PyGen_Send(PyGenObject *, PyObject *);
PyObject *_PyGen_yf(PyGenObject *);
void _PyGen_Finalize(PyObject *self);

#ifndef Py_LIMITED_API
typedef struct {
    _PyGenObject_HEAD(cr)
} PyCoroObject;

extern PyTypeObject PyCoro_Type;
extern PyTypeObject _PyCoroWrapper_Type;

extern PyTypeObject _PyAIterWrapper_Type;
PyObject *_PyAIterWrapper_New(PyObject *aiter);

#define PyCoro_CheckExact(op) (Py_TYPE(op) == &PyCoro_Type)
PyObject *_PyCoro_GetAwaitableIter(PyObject *o);
PyObject * PyCoro_New(struct _frame *,
    PyObject *name, PyObject *qualname);

/* Asynchronous Generators */

typedef struct {
    _PyGenObject_HEAD(ag)
    PyObject *ag_finalizer;

    /* Flag is set to 1 when hooks set up by sys.set_asyncgen_hooks
       were called on the generator, to avoid calling them more
       than once. */
    int ag_hooks_inited;

    /* Flag is set to 1 when aclose() is called for the first time, or
       when a StopAsyncIteration exception is raised. */
    int ag_closed;
} PyAsyncGenObject;

extern PyTypeObject PyAsyncGen_Type;
extern PyTypeObject _PyAsyncGenASend_Type;
extern PyTypeObject _PyAsyncGenWrappedValue_Type;
extern PyTypeObject _PyAsyncGenAThrow_Type;

PyObject * PyAsyncGen_New(struct _frame *,
    PyObject *name, PyObject *qualname);

#define PyAsyncGen_CheckExact(op) (Py_TYPE(op) == &PyAsyncGen_Type)

PyObject *_PyAsyncGenValueWrapperNew(PyObject *);

int PyAsyncGen_ClearFreeLists(void);

#endif

#undef _PyGenObject_HEAD

COSMOPOLITAN_C_END_
#endif /* !Py_GENOBJECT_H */
#endif /* Py_LIMITED_API */
