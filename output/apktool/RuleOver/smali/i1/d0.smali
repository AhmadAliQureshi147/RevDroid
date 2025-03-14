.class public Li1/d0;
.super Ld1/a;
.source "SourceFile"

# interfaces
.implements Lp0/e;


# instance fields
.field public final h:Ln0/d;


# direct methods
.method public constructor <init>(Ln0/g;Ln0/d;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Ld1/a;-><init>(Ln0/g;ZZ)V

    iput-object p2, p0, Li1/d0;->h:Ln0/d;

    return-void
.end method


# virtual methods
.method protected F0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li1/d0;->h:Ln0/d;

    invoke-static {p1, v0}, Ld1/y;->a(Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ln0/d;->g(Ljava/lang/Object;)V

    return-void
.end method

.method protected G(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Li1/d0;->h:Ln0/d;

    invoke-static {v0}, Lo0/b;->b(Ln0/d;)Ln0/d;

    move-result-object v0

    iget-object v1, p0, Li1/d0;->h:Ln0/d;

    invoke-static {p1, v1}, Ld1/y;->a(Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Li1/k;->c(Ln0/d;Ljava/lang/Object;Lv0/l;ILjava/lang/Object;)V

    return-void
.end method

.method protected final g0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final t()Lp0/e;
    .locals 2

    .line 1
    iget-object v0, p0, Li1/d0;->h:Ln0/d;

    instance-of v1, v0, Lp0/e;

    if-eqz v1, :cond_0

    check-cast v0, Lp0/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
