.class final Lq/e$b;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq/e;->l()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lq/e;


# direct methods
.method constructor <init>(Lq/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq/e$b;->f:Lq/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lw0/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 6

    .line 1
    iget-object v0, p0, Lq/e$b;->f:Lq/e;

    invoke-static {v0}, Lq/e;->a(Lq/e;)Ln/d;

    move-result-object v0

    invoke-virtual {v0}, Ln/d;->b()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    iget-object v1, p0, Lq/e$b;->f:Lq/e;

    invoke-static {v1}, Lq/e;->d(Lq/e;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/app/Activity;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v5, "addWindowLayoutInfoListener"

    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v0, v5, v4

    const-string v0, "removeWindowLayoutInfoListener"

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lv/a;->a:Lv/a;

    const-string v5, "addListenerMethod"

    invoke-static {v2, v5}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lv/a;->d(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "removeListenerMethod"

    invoke-static {v0, v2}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lv/a;->d(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq/e$b;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
