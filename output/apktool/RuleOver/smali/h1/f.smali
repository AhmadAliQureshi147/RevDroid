.class public abstract Lh1/f;
.super Lh1/d;
.source "SourceFile"


# instance fields
.field protected final d:Lg1/c;


# direct methods
.method public constructor <init>(Lg1/c;Ln0/g;ILf1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lh1/d;-><init>(Ln0/g;ILf1/a;)V

    iput-object p1, p0, Lh1/f;->d:Lg1/c;

    return-void
.end method

.method static synthetic j(Lh1/f;Lg1/d;Ln0/d;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lh1/d;->b:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    invoke-interface {p2}, Ln0/d;->h()Ln0/g;

    move-result-object v0

    iget-object v1, p0, Lh1/d;->a:Ln0/g;

    invoke-interface {v0, v1}, Ln0/g;->u(Ln0/g;)Ln0/g;

    move-result-object v1

    invoke-static {v1, v0}, Lw0/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lh1/f;->m(Lg1/d;Ln0/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ll0/q;->a:Ll0/q;

    return-object p0

    :cond_1
    sget-object v2, Ln0/e;->d:Ln0/e$b;

    invoke-interface {v1, v2}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object v3

    invoke-interface {v0, v2}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object v0

    invoke-static {v3, v0}, Lw0/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v1, p2}, Lh1/f;->l(Lg1/d;Ln0/g;Ln0/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Ll0/q;->a:Ll0/q;

    return-object p0

    :cond_3
    invoke-super {p0, p1, p2}, Lh1/d;->c(Lg1/d;Ln0/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Ll0/q;->a:Ll0/q;

    return-object p0
.end method

.method static synthetic k(Lh1/f;Lf1/r;Ln0/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lh1/j;

    invoke-direct {v0, p1}, Lh1/j;-><init>(Lf1/t;)V

    invoke-virtual {p0, v0, p2}, Lh1/f;->m(Lg1/d;Ln0/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ll0/q;->a:Ll0/q;

    return-object p0
.end method

.method private final l(Lg1/d;Ln0/g;Ln0/d;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-interface {p3}, Ln0/d;->h()Ln0/g;

    move-result-object v0

    invoke-static {p1, v0}, Lh1/e;->a(Lg1/d;Ln0/g;)Lg1/d;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lh1/f$a;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Lh1/f$a;-><init>(Lh1/f;Ln0/d;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lh1/e;->c(Ln0/g;Ljava/lang/Object;Ljava/lang/Object;Lv0/p;Ln0/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method


# virtual methods
.method public c(Lg1/d;Ln0/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lh1/f;->j(Lh1/f;Lg1/d;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected e(Lf1/r;Ln0/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lh1/f;->k(Lh1/f;Lf1/r;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract m(Lg1/d;Ln0/d;)Ljava/lang/Object;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh1/f;->d:Lg1/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lh1/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
