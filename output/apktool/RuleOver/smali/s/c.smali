.class public final Ls/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lg/a;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ls/c;->d(Lg/a;)V

    return-void
.end method

.method private static final d(Lg/a;)V
    .locals 2

    .line 1
    const-string v0, "$callback"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lq/j;

    invoke-static {}, Lm0/l;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lq/j;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Lg/a;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lg/a;)V
    .locals 1

    .line 1
    const-string v0, "callback"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/util/concurrent/Executor;Lg/a;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "executor"

    invoke-static {p2, p1}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "callback"

    invoke-static {p3, p1}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ls/b;

    invoke-direct {p1, p3}, Ls/b;-><init>(Lg/a;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
