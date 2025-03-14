.class Ly/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lx/a;->e()Lx/a;

    move-result-object v0

    invoke-virtual {v0}, Lx/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Ly/c$c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
