.class public final Lo0/c$b;
.super Lp0/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo0/c;->a(Lv0/p;Ljava/lang/Object;Ln0/d;)Ln0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private h:I

.field final synthetic i:Lv0/p;

.field final synthetic j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln0/d;Ln0/g;Lv0/p;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lo0/c$b;->i:Lv0/p;

    iput-object p4, p0, Lo0/c$b;->j:Ljava/lang/Object;

    const-string p3, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p1, p3}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lp0/d;-><init>(Ln0/d;Ln0/g;)V

    return-void
.end method


# virtual methods
.method protected j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lo0/c$b;->h:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lo0/c$b;->h:I

    invoke-static {p1}, Ll0/l;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v2, p0, Lo0/c$b;->h:I

    invoke-static {p1}, Ll0/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lo0/c$b;->i:Lv0/p;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>"

    invoke-static {p1, v0}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lo0/c$b;->i:Lv0/p;

    invoke-static {p1, v1}, Lw0/t;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv0/p;

    iget-object v0, p0, Lo0/c$b;->j:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Lv0/p;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
