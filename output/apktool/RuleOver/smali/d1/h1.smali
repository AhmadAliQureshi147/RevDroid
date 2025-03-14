.class public Ld1/h1;
.super Ld1/l1;
.source "SourceFile"

# interfaces
.implements Ld1/s;


# instance fields
.field private final g:Z


# direct methods
.method public constructor <init>(Ld1/e1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ld1/l1;-><init>(Z)V

    invoke-virtual {p0, p1}, Ld1/l1;->c0(Ld1/e1;)V

    invoke-direct {p0}, Ld1/h1;->F0()Z

    move-result p1

    iput-boolean p1, p0, Ld1/h1;->g:Z

    return-void
.end method

.method private final F0()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ld1/l1;->Y()Ld1/p;

    move-result-object v0

    instance-of v1, v0, Ld1/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ld1/q;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ld1/k1;->x()Ld1/l1;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ld1/l1;->V()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {v0}, Ld1/l1;->Y()Ld1/p;

    move-result-object v0

    instance-of v3, v0, Ld1/q;

    if-eqz v3, :cond_3

    check-cast v0, Ld1/q;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ld1/k1;->x()Ld1/l1;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public V()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ld1/h1;->g:Z

    return v0
.end method

.method public W()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
