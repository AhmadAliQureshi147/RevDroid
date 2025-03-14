.class final Lq/e$d;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq/e;->o()Z
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
    iput-object p1, p0, Lq/e$d;->f:Lq/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lw0/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 5

    .line 1
    iget-object v0, p0, Lq/e$d;->f:Lq/e;

    invoke-static {v0}, Lq/e;->c(Lq/e;)Lm/a;

    move-result-object v0

    invoke-virtual {v0}, Lm/a;->c()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getWindowLayoutComponent"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v2, p0, Lq/e$d;->f:Lq/e;

    invoke-static {v2}, Lq/e;->d(Lq/e;)Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lv/a;->a:Lv/a;

    const-string v4, "getWindowLayoutComponentMethod"

    invoke-static {v0, v4}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lv/a;->d(Ljava/lang/reflect/Method;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0, v2}, Lv/a;->c(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

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
    invoke-virtual {p0}, Lq/e$d;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
