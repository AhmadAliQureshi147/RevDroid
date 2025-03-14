.class public final Ld1/q;
.super Ld1/g1;
.source "SourceFile"

# interfaces
.implements Ld1/p;


# instance fields
.field public final i:Ld1/r;


# direct methods
.method public constructor <init>(Ld1/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld1/g1;-><init>()V

    iput-object p1, p0, Ld1/q;->i:Ld1/r;

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld1/k1;->x()Ld1/l1;

    move-result-object v0

    invoke-virtual {v0, p1}, Ld1/l1;->N(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ld1/q;->w(Ljava/lang/Throwable;)V

    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld1/q;->i:Ld1/r;

    invoke-virtual {p0}, Ld1/k1;->x()Ld1/l1;

    move-result-object v0

    invoke-interface {p1, v0}, Ld1/r;->B(Ld1/s1;)V

    return-void
.end method
