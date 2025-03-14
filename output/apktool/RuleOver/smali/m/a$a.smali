.class final Lm/a$a;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/a;->e()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lm/a;


# direct methods
.method constructor <init>(Lm/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/a$a;->f:Lm/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lw0/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 2

    .line 1
    iget-object v0, p0, Lm/a$a;->f:Lm/a;

    invoke-static {v0}, Lm/a;->a(Lm/a;)Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "androidx.window.extensions.WindowExtensionsProvider"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "loader.loadClass(WindowE\u2026XTENSIONS_PROVIDER_CLASS)"

    invoke-static {v0, v1}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm/a$a;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
