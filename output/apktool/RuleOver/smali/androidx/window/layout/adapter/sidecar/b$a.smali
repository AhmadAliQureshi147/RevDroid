.class public final Landroidx/window/layout/adapter/sidecar/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/layout/adapter/sidecar/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lw0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/window/layout/adapter/sidecar/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/window/layout/adapter/sidecar/b;
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroidx/window/layout/adapter/sidecar/b;->c()Landroidx/window/layout/adapter/sidecar/b;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/window/layout/adapter/sidecar/b;->d()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {}, Landroidx/window/layout/adapter/sidecar/b;->c()Landroidx/window/layout/adapter/sidecar/b;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroidx/window/layout/adapter/sidecar/b;->c:Landroidx/window/layout/adapter/sidecar/b$a;

    invoke-virtual {v1, p1}, Landroidx/window/layout/adapter/sidecar/b$a;->b(Landroid/content/Context;)Landroidx/window/layout/adapter/sidecar/a;

    move-result-object p1

    new-instance v1, Landroidx/window/layout/adapter/sidecar/b;

    invoke-direct {v1, p1}, Landroidx/window/layout/adapter/sidecar/b;-><init>(Landroidx/window/layout/adapter/sidecar/a;)V

    invoke-static {v1}, Landroidx/window/layout/adapter/sidecar/b;->e(Landroidx/window/layout/adapter/sidecar/b;)V

    :cond_0
    sget-object p1, Ll0/q;->a:Ll0/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/window/layout/adapter/sidecar/b;->c()Landroidx/window/layout/adapter/sidecar/b;

    move-result-object p1

    invoke-static {p1}, Lw0/k;->b(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Landroidx/window/layout/adapter/sidecar/a;
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->f:Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;

    invoke-virtual {v1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;->c()Ln/k;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/window/layout/adapter/sidecar/b$a;->c(Ln/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/window/layout/adapter/sidecar/SidecarCompat;

    invoke-direct {v1, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->l()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public final c(Ln/k;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Ln/k;->j:Ln/k$a;

    invoke-virtual {v1}, Ln/k$a;->a()Ln/k;

    move-result-object v1

    invoke-virtual {p1, v1}, Ln/k;->b(Ln/k;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
