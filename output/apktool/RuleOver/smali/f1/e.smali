.class public abstract Lf1/e;
.super Ld1/a;
.source "SourceFile"

# interfaces
.implements Lf1/d;


# instance fields
.field private final h:Lf1/d;


# direct methods
.method public constructor <init>(Ln0/g;Lf1/d;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3, p4}, Ld1/a;-><init>(Ln0/g;ZZ)V

    iput-object p2, p0, Lf1/e;->h:Lf1/d;

    return-void
.end method


# virtual methods
.method public J(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Ld1/l1;->y0(Ld1/l1;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    iget-object v0, p0, Lf1/e;->h:Lf1/d;

    invoke-interface {v0, p1}, Lf1/s;->b(Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0, p1}, Ld1/l1;->H(Ljava/lang/Throwable;)Z

    return-void
.end method

.method protected final J0()Lf1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/e;->h:Lf1/d;

    return-object v0
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ld1/l1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ld1/f1;

    invoke-static {p0}, Ld1/l1;->C(Ld1/l1;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Ld1/f1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ld1/e1;)V

    :cond_1
    invoke-virtual {p0, p1}, Lf1/e;->J(Ljava/lang/Throwable;)V

    return-void
.end method

.method public iterator()Lf1/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/e;->h:Lf1/d;

    invoke-interface {v0}, Lf1/s;->iterator()Lf1/f;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/e;->h:Lf1/d;

    invoke-interface {v0, p1, p2}, Lf1/t;->n(Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/e;->h:Lf1/d;

    invoke-interface {v0}, Lf1/t;->o()Z

    move-result v0

    return v0
.end method

.method public r(Lv0/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/e;->h:Lf1/d;

    invoke-interface {v0, p1}, Lf1/t;->r(Lv0/l;)V

    return-void
.end method

.method public x(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/e;->h:Lf1/d;

    invoke-interface {v0, p1}, Lf1/t;->x(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf1/e;->h:Lf1/d;

    invoke-interface {v0, p1}, Lf1/t;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
