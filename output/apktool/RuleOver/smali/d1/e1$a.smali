.class public abstract Ld1/e1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Ld1/e1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-interface {p0, p1}, Ld1/e1;->b(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: cancel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ld1/e1;Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ln0/g$b$a;->a(Ln0/g$b;Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ld1/e1;Ln0/g$c;)Ln0/g$b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ln0/g$b$a;->b(Ln0/g$b;Ln0/g$c;)Ln0/g$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ld1/e1;ZZLv0/l;ILjava/lang/Object;)Ld1/o0;
    .locals 0

    .line 1
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Ld1/e1;->i(ZZLv0/l;)Ld1/o0;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invokeOnCompletion"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ld1/e1;Ln0/g$c;)Ln0/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ln0/g$b$a;->c(Ln0/g$b;Ln0/g$c;)Ln0/g;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ld1/e1;Ln0/g;)Ln0/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ln0/g$b$a;->d(Ln0/g$b;Ln0/g;)Ln0/g;

    move-result-object p0

    return-object p0
.end method
