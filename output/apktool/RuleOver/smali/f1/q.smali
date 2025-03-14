.class final Lf1/q;
.super Lf1/e;
.source "SourceFile"

# interfaces
.implements Lf1/r;


# direct methods
.method public constructor <init>(Ln0/g;Lf1/d;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lf1/e;-><init>(Ln0/g;Lf1/d;ZZ)V

    return-void
.end method


# virtual methods
.method protected G0(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf1/e;->J0()Lf1/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lf1/t;->x(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Ld1/a;->h()Ln0/g;

    move-result-object p2

    invoke-static {p2, p1}, Ld1/c0;->a(Ln0/g;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic H0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ll0/q;

    invoke-virtual {p0, p1}, Lf1/q;->K0(Ll0/q;)V

    return-void
.end method

.method protected K0(Ll0/q;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lf1/e;->J0()Lf1/d;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lf1/t$a;->a(Lf1/t;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-super {p0}, Ld1/a;->c()Z

    move-result v0

    return v0
.end method
