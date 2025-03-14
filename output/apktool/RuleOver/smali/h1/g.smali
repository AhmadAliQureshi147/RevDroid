.class public final Lh1/g;
.super Lh1/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lg1/c;Ln0/g;ILf1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lh1/f;-><init>(Lg1/c;Ln0/g;ILf1/a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lg1/c;Ln0/g;ILf1/a;ILw0/g;)V
    .locals 0

    .line 2
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p2, Ln0/h;->e:Ln0/h;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, Lf1/a;->e:Lf1/a;

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lh1/g;-><init>(Lg1/c;Ln0/g;ILf1/a;)V

    return-void
.end method


# virtual methods
.method protected f(Ln0/g;ILf1/a;)Lh1/d;
    .locals 2

    .line 1
    new-instance v0, Lh1/g;

    iget-object v1, p0, Lh1/f;->d:Lg1/c;

    invoke-direct {v0, v1, p1, p2, p3}, Lh1/g;-><init>(Lg1/c;Ln0/g;ILf1/a;)V

    return-object v0
.end method

.method protected m(Lg1/d;Ln0/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lh1/f;->d:Lg1/c;

    invoke-interface {v0, p1, p2}, Lg1/c;->c(Lg1/d;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method
