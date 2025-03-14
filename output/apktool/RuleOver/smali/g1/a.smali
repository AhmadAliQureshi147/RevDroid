.class final Lg1/a;
.super Lg1/b;
.source "SourceFile"


# instance fields
.field private final e:Lv0/p;


# direct methods
.method public constructor <init>(Lv0/p;Ln0/g;ILf1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lg1/b;-><init>(Lv0/p;Ln0/g;ILf1/a;)V

    iput-object p1, p0, Lg1/a;->e:Lv0/p;

    return-void
.end method

.method public synthetic constructor <init>(Lv0/p;Ln0/g;ILf1/a;ILw0/g;)V
    .locals 0

    .line 2
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p2, Ln0/h;->e:Ln0/h;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x2

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    sget-object p4, Lf1/a;->e:Lf1/a;

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lg1/a;-><init>(Lv0/p;Ln0/g;ILf1/a;)V

    return-void
.end method


# virtual methods
.method protected e(Lf1/r;Ln0/d;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lg1/a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg1/a$a;

    iget v1, v0, Lg1/a$a;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg1/a$a;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg1/a$a;

    invoke-direct {v0, p0, p2}, Lg1/a$a;-><init>(Lg1/a;Ln0/d;)V

    :goto_0
    iget-object p2, v0, Lg1/a$a;->i:Ljava/lang/Object;

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lg1/a$a;->k:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lg1/a$a;->h:Ljava/lang/Object;

    check-cast p1, Lf1/r;

    invoke-static {p2}, Ll0/l;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Ll0/l;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lg1/a$a;->h:Ljava/lang/Object;

    iput v3, v0, Lg1/a$a;->k:I

    invoke-super {p0, p1, v0}, Lg1/b;->e(Lf1/r;Ln0/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-interface {p1}, Lf1/t;->o()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected f(Ln0/g;ILf1/a;)Lh1/d;
    .locals 2

    .line 1
    new-instance v0, Lg1/a;

    iget-object v1, p0, Lg1/a;->e:Lv0/p;

    invoke-direct {v0, v1, p1, p2, p3}, Lg1/a;-><init>(Lv0/p;Ln0/g;ILf1/a;)V

    return-object v0
.end method
