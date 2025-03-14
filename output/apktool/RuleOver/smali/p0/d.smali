.class public abstract Lp0/d;
.super Lp0/a;
.source "SourceFile"


# instance fields
.field private final f:Ln0/g;

.field private transient g:Ln0/d;


# direct methods
.method public constructor <init>(Ln0/d;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ln0/d;->h()Ln0/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lp0/d;-><init>(Ln0/d;Ln0/g;)V

    return-void
.end method

.method public constructor <init>(Ln0/d;Ln0/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lp0/a;-><init>(Ln0/d;)V

    iput-object p2, p0, Lp0/d;->f:Ln0/g;

    return-void
.end method


# virtual methods
.method public h()Ln0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/d;->f:Ln0/g;

    invoke-static {v0}, Lw0/k;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/d;->g:Ln0/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lp0/d;->h()Ln0/g;

    move-result-object v1

    sget-object v2, Ln0/e;->d:Ln0/e$b;

    invoke-interface {v1, v2}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object v1

    invoke-static {v1}, Lw0/k;->b(Ljava/lang/Object;)V

    check-cast v1, Ln0/e;

    invoke-interface {v1, v0}, Ln0/e;->p(Ln0/d;)V

    :cond_0
    sget-object v0, Lp0/c;->e:Lp0/c;

    iput-object v0, p0, Lp0/d;->g:Ln0/d;

    return-void
.end method

.method public final l()Ln0/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lp0/d;->g:Ln0/d;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lp0/d;->h()Ln0/g;

    move-result-object v0

    sget-object v1, Ln0/e;->d:Ln0/e$b;

    invoke-interface {v0, v1}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object v0

    check-cast v0, Ln0/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ln0/e;->d(Ln0/d;)Ln0/d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iput-object v0, p0, Lp0/d;->g:Ln0/d;

    :cond_2
    return-object v0
.end method
