.class final Lq/i$a;
.super Lp0/k;
.source "SourceFile"

# interfaces
.implements Lv0/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq/i;->a(Landroid/app/Activity;)Lg1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field i:I

.field private synthetic j:Ljava/lang/Object;

.field final synthetic k:Lq/i;

.field final synthetic l:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lq/i;Landroid/app/Activity;Ln0/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq/i$a;->k:Lq/i;

    iput-object p2, p0, Lq/i$a;->l:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lp0/k;-><init>(ILn0/d;)V

    return-void
.end method

.method public static synthetic m(Lf1/r;Lq/j;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lq/i$a;->o(Lf1/r;Lq/j;)V

    return-void
.end method

.method private static final o(Lf1/r;Lq/j;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lf1/t;->y(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ln0/d;)Ln0/d;
    .locals 3

    .line 1
    new-instance v0, Lq/i$a;

    iget-object v1, p0, Lq/i$a;->k:Lq/i;

    iget-object v2, p0, Lq/i$a;->l:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p2}, Lq/i$a;-><init>(Lq/i;Landroid/app/Activity;Ln0/d;)V

    iput-object p1, v0, Lq/i$a;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lf1/r;

    check-cast p2, Ln0/d;

    invoke-virtual {p0, p1, p2}, Lq/i$a;->n(Lf1/r;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lq/i$a;->i:I

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

    iget-object p1, p0, Lq/i$a;->j:Ljava/lang/Object;

    check-cast p1, Lf1/r;

    new-instance v1, Lq/h;

    invoke-direct {v1, p1}, Lq/h;-><init>(Lf1/r;)V

    iget-object v3, p0, Lq/i$a;->k:Lq/i;

    invoke-static {v3}, Lq/i;->b(Lq/i;)Lr/a;

    move-result-object v3

    iget-object v4, p0, Lq/i$a;->l:Landroid/app/Activity;

    new-instance v5, Landroidx/profileinstaller/h;

    invoke-direct {v5}, Landroidx/profileinstaller/h;-><init>()V

    invoke-interface {v3, v4, v5, v1}, Lr/a;->b(Landroid/content/Context;Ljava/util/concurrent/Executor;Lg/a;)V

    new-instance v3, Lq/i$a$a;

    iget-object v4, p0, Lq/i$a;->k:Lq/i;

    invoke-direct {v3, v4, v1}, Lq/i$a$a;-><init>(Lq/i;Lg/a;)V

    iput v2, p0, Lq/i$a;->i:I

    invoke-static {p1, v3, p0}, Lf1/p;->a(Lf1/r;Lv0/a;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method

.method public final n(Lf1/r;Ln0/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lq/i$a;->a(Ljava/lang/Object;Ln0/d;)Ln0/d;

    move-result-object p1

    check-cast p1, Lq/i$a;

    sget-object p2, Ll0/q;->a:Ll0/q;

    invoke-virtual {p1, p2}, Lq/i$a;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
