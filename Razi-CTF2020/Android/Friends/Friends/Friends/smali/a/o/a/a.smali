.class public abstract La/o/a/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(La/n/g;)La/o/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "La/n/g;",
            ":",
            "La/n/t;",
            ">(TT;)",
            "La/o/a/a;"
        }
    .end annotation

    new-instance v0, La/o/a/b;

    move-object v1, p0

    check-cast v1, La/n/t;

    invoke-interface {v1}, La/n/t;->e()La/n/s;

    move-result-object v1

    invoke-direct {v0, p0, v1}, La/o/a/b;-><init>(La/n/g;La/n/s;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
