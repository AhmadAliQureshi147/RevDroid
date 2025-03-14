.class final Lq/e$a;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq/e;->k()Z
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
    iput-object p1, p0, Lq/e$a;->f:Lq/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lw0/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 6

    .line 1
    iget-object v0, p0, Lq/e$a;->f:Lq/e;

    invoke-static {v0}, Lq/e;->b(Lq/e;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getBounds"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "getType"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "getState"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v4, Lv/a;->a:Lv/a;

    const-string v5, "getBoundsMethod"

    invoke-static {v2, v5}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v5, Landroid/graphics/Rect;

    invoke-static {v5}, Lw0/r;->b(Ljava/lang/Class;)La1/b;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lv/a;->b(Ljava/lang/reflect/Method;La1/b;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Lv/a;->d(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "getTypeMethod"

    invoke-static {v3, v2}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lw0/r;->b(Ljava/lang/Class;)La1/b;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lv/a;->b(Ljava/lang/reflect/Method;La1/b;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v3}, Lv/a;->d(Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "getStateMethod"

    invoke-static {v0, v3}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lw0/r;->b(Ljava/lang/Class;)La1/b;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lv/a;->b(Ljava/lang/reflect/Method;La1/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4, v0}, Lv/a;->d(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq/e$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
