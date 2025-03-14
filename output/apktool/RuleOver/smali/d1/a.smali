.class public abstract Ld1/a;
.super Ld1/l1;
.source "SourceFile"

# interfaces
.implements Ln0/d;
.implements Ld1/d0;


# instance fields
.field private final g:Ln0/g;


# direct methods
.method public constructor <init>(Ln0/g;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Ld1/l1;-><init>(Z)V

    if-eqz p2, :cond_0

    sget-object p2, Ld1/e1;->b:Ld1/e1$b;

    invoke-interface {p1, p2}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object p2

    check-cast p2, Ld1/e1;

    invoke-virtual {p0, p2}, Ld1/l1;->c0(Ld1/e1;)V

    :cond_0
    invoke-interface {p1, p0}, Ln0/g;->u(Ln0/g;)Ln0/g;

    move-result-object p1

    iput-object p1, p0, Ld1/a;->g:Ln0/g;

    return-void
.end method


# virtual methods
.method protected F0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ld1/l1;->G(Ljava/lang/Object;)V

    return-void
.end method

.method protected G0(Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method protected H0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final I0(Ld1/f0;Ljava/lang/Object;Lv0/p;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3, p2, p0}, Ld1/f0;->b(Lv0/p;Ljava/lang/Object;Ln0/d;)V

    return-void
.end method

.method protected M()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ld1/h0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b0(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/a;->g:Ln0/g;

    invoke-static {v0, p1}, Ld1/c0;->a(Ln0/g;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-super {p0}, Ld1/l1;->c()Z

    move-result v0

    return v0
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Ld1/y;->d(Ljava/lang/Object;Lv0/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld1/l1;->i0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ld1/m1;->b:Li1/h0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ld1/a;->F0(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Ln0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/a;->g:Ln0/g;

    return-object v0
.end method

.method public k0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ld1/a;->g:Ln0/g;

    invoke-static {v0}, Ld1/z;->b(Ln0/g;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ld1/l1;->k0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ld1/l1;->k0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final p0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, Ld1/u;

    if-eqz v0, :cond_0

    check-cast p1, Ld1/u;

    iget-object v0, p1, Ld1/u;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ld1/u;->a()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Ld1/a;->G0(Ljava/lang/Throwable;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ld1/a;->H0(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public z()Ln0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/a;->g:Ln0/g;

    return-object v0
.end method
