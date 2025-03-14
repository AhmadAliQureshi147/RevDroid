.class Landroidx/core/view/i$h;
.super Landroidx/core/view/i$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private m:Landroidx/core/graphics/e;


# direct methods
.method constructor <init>(Landroidx/core/view/i;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/i$g;-><init>(Landroidx/core/view/i;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/i$h;->m:Landroidx/core/graphics/e;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/i;Landroidx/core/view/i$h;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/core/view/i$g;-><init>(Landroidx/core/view/i;Landroidx/core/view/i$g;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/i$h;->m:Landroidx/core/graphics/e;

    iget-object p1, p2, Landroidx/core/view/i$h;->m:Landroidx/core/graphics/e;

    iput-object p1, p0, Landroidx/core/view/i$h;->m:Landroidx/core/graphics/e;

    return-void
.end method


# virtual methods
.method b()Landroidx/core/view/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/i;->m(Landroid/view/WindowInsets;)Landroidx/core/view/i;

    move-result-object v0

    return-object v0
.end method

.method c()Landroidx/core/view/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/i;->m(Landroid/view/WindowInsets;)Landroidx/core/view/i;

    move-result-object v0

    return-object v0
.end method

.method final i()Landroidx/core/graphics/e;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/view/i$h;->m:Landroidx/core/graphics/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/i$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/view/i$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/view/i$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/view/i$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/e;->b(IIII)Landroidx/core/graphics/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/i$h;->m:Landroidx/core/graphics/e;

    :cond_0
    iget-object v0, p0, Landroidx/core/view/i$h;->m:Landroidx/core/graphics/e;

    return-object v0
.end method

.method m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i$g;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public r(Landroidx/core/graphics/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/i$h;->m:Landroidx/core/graphics/e;

    return-void
.end method
