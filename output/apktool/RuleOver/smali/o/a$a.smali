.class final Lo/a$a;
.super Lp0/k;
.source "SourceFile"

# interfaces
.implements Lv0/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/a;->a(Ljava/util/concurrent/Executor;Lg/a;Lg1/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field i:I

.field final synthetic j:Lg1/c;

.field final synthetic k:Lg/a;


# direct methods
.method constructor <init>(Lg1/c;Lg/a;Ln0/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/a$a;->j:Lg1/c;

    iput-object p2, p0, Lo/a$a;->k:Lg/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lp0/k;-><init>(ILn0/d;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ln0/d;)Ln0/d;
    .locals 2

    .line 1
    new-instance p1, Lo/a$a;

    iget-object v0, p0, Lo/a$a;->j:Lg1/c;

    iget-object v1, p0, Lo/a$a;->k:Lg/a;

    invoke-direct {p1, v0, v1, p2}, Lo/a$a;-><init>(Lg1/c;Lg/a;Ln0/d;)V

    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ld1/d0;

    check-cast p2, Ln0/d;

    invoke-virtual {p0, p1, p2}, Lo/a$a;->m(Ld1/d0;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lo/a$a;->i:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ll0/l;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Ll0/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lo/a$a;->j:Lg1/c;

    new-instance v1, Lo/a$a$a;

    iget-object v3, p0, Lo/a$a;->k:Lg/a;

    invoke-direct {v1, v3}, Lo/a$a$a;-><init>(Lg/a;)V

    iput v2, p0, Lo/a$a;->i:I

    invoke-interface {p1, v1, p0}, Lg1/c;->c(Lg1/d;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method

.method public final m(Ld1/d0;Ln0/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lo/a$a;->a(Ljava/lang/Object;Ln0/d;)Ln0/d;

    move-result-object p1

    check-cast p1, Lo/a$a;

    sget-object p2, Ll0/q;->a:Ll0/q;

    invoke-virtual {p1, p2}, Lo/a$a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
