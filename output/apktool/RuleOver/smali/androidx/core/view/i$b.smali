.class public final Landroidx/core/view/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/i$f;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/i$e;

    invoke-direct {v0}, Landroidx/core/view/i$e;-><init>()V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/i$b;->a:Landroidx/core/view/i$f;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/view/i$d;

    invoke-direct {v0}, Landroidx/core/view/i$d;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/core/view/i$c;

    invoke-direct {v0}, Landroidx/core/view/i$c;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i$b;->a:Landroidx/core/view/i$f;

    invoke-virtual {v0}, Landroidx/core/view/i$f;->b()Landroidx/core/view/i;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroidx/core/graphics/e;)Landroidx/core/view/i$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i$b;->a:Landroidx/core/view/i$f;

    invoke-virtual {v0, p1}, Landroidx/core/view/i$f;->d(Landroidx/core/graphics/e;)V

    return-object p0
.end method

.method public c(Landroidx/core/graphics/e;)Landroidx/core/view/i$b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i$b;->a:Landroidx/core/view/i$f;

    invoke-virtual {v0, p1}, Landroidx/core/view/i$f;->f(Landroidx/core/graphics/e;)V

    return-object p0
.end method
