.class public abstract Lh1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/h;


# instance fields
.field public final a:Ln0/g;

.field public final b:I

.field public final c:Lf1/a;


# direct methods
.method public constructor <init>(Ln0/g;ILf1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/d;->a:Ln0/g;

    iput p2, p0, Lh1/d;->b:I

    iput-object p3, p0, Lh1/d;->c:Lf1/a;

    return-void
.end method

.method static synthetic d(Lh1/d;Lg1/d;Ln0/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lh1/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lh1/d$a;-><init>(Lg1/d;Lh1/d;Ln0/d;)V

    invoke-static {v0, p2}, Ld1/e0;->b(Lv0/p;Ln0/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ll0/q;->a:Ll0/q;

    return-object p0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ln0/g;ILf1/a;)Lg1/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lh1/d;->a:Ln0/g;

    invoke-interface {p1, v0}, Ln0/g;->u(Ln0/g;)Ln0/g;

    move-result-object p1

    sget-object v0, Lf1/a;->e:Lf1/a;

    if-eq p3, v0, :cond_0

    goto :goto_2

    :cond_0
    iget p3, p0, Lh1/d;->b:I

    const/4 v0, -0x3

    if-ne p3, v0, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v0, :cond_2

    :goto_0
    move p2, p3

    goto :goto_1

    :cond_2
    const/4 v0, -0x2

    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    if-ne p2, v0, :cond_4

    goto :goto_0

    :cond_4
    add-int/2addr p3, p2

    if-ltz p3, :cond_5

    goto :goto_0

    :cond_5
    const p2, 0x7fffffff

    :goto_1
    iget-object p3, p0, Lh1/d;->c:Lf1/a;

    :goto_2
    iget-object v0, p0, Lh1/d;->a:Ln0/g;

    invoke-static {p1, v0}, Lw0/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lh1/d;->b:I

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lh1/d;->c:Lf1/a;

    if-ne p3, v0, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lh1/d;->f(Ln0/g;ILf1/a;)Lh1/d;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg1/d;Ln0/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lh1/d;->d(Lh1/d;Lg1/d;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract e(Lf1/r;Ln0/d;)Ljava/lang/Object;
.end method

.method protected abstract f(Ln0/g;ILf1/a;)Lh1/d;
.end method

.method public final g()Lv0/p;
    .locals 2

    .line 1
    new-instance v0, Lh1/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh1/d$b;-><init>(Lh1/d;Ln0/d;)V

    return-object v0
.end method

.method public final h()I
    .locals 2

    .line 1
    iget v0, p0, Lh1/d;->b:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v0, -0x2

    :cond_0
    return v0
.end method

.method public i(Ld1/d0;)Lf1/s;
    .locals 9

    .line 1
    iget-object v1, p0, Lh1/d;->a:Ln0/g;

    invoke-virtual {p0}, Lh1/d;->h()I

    move-result v2

    iget-object v3, p0, Lh1/d;->c:Lf1/a;

    sget-object v4, Ld1/f0;->g:Ld1/f0;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lh1/d;->g()Lv0/p;

    move-result-object v6

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lf1/p;->c(Ld1/d0;Ln0/g;ILf1/a;Ld1/f0;Lv0/l;Lv0/p;ILjava/lang/Object;)Lf1/s;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lh1/d;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lh1/d;->a:Ln0/g;

    sget-object v2, Ln0/h;->e:Ln0/h;

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh1/d;->a:Ln0/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Lh1/d;->b:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lh1/d;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lh1/d;->c:Lf1/a;

    sget-object v2, Lf1/a;->e:Lf1/a;

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferOverflow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh1/d;->c:Lf1/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ld1/h0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lm0/l;->n(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lv0/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
