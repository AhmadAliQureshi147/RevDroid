.class Landroidx/core/view/i$j;
.super Landroidx/core/view/i$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field private n:Landroidx/core/graphics/e;

.field private o:Landroidx/core/graphics/e;

.field private p:Landroidx/core/graphics/e;


# direct methods
.method constructor <init>(Landroidx/core/view/i;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/core/view/i$i;-><init>(Landroidx/core/view/i;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/i$j;->n:Landroidx/core/graphics/e;

    iput-object p1, p0, Landroidx/core/view/i$j;->o:Landroidx/core/graphics/e;

    iput-object p1, p0, Landroidx/core/view/i$j;->p:Landroidx/core/graphics/e;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/i;Landroidx/core/view/i$j;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/core/view/i$i;-><init>(Landroidx/core/view/i;Landroidx/core/view/i$i;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/view/i$j;->n:Landroidx/core/graphics/e;

    iput-object p1, p0, Landroidx/core/view/i$j;->o:Landroidx/core/graphics/e;

    iput-object p1, p0, Landroidx/core/view/i$j;->p:Landroidx/core/graphics/e;

    return-void
.end method


# virtual methods
.method h()Landroidx/core/graphics/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i$j;->o:Landroidx/core/graphics/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/i$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/u;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/e;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/i$j;->o:Landroidx/core/graphics/e;

    :cond_0
    iget-object v0, p0, Landroidx/core/view/i$j;->o:Landroidx/core/graphics/e;

    return-object v0
.end method

.method j()Landroidx/core/graphics/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i$j;->n:Landroidx/core/graphics/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/i$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/s;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/e;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/i$j;->n:Landroidx/core/graphics/e;

    :cond_0
    iget-object v0, p0, Landroidx/core/view/i$j;->n:Landroidx/core/graphics/e;

    return-object v0
.end method

.method l()Landroidx/core/graphics/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i$j;->p:Landroidx/core/graphics/e;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/core/view/i$g;->c:Landroid/view/WindowInsets;

    invoke-static {v0}, Landroidx/core/view/t;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/e;->d(Landroid/graphics/Insets;)Landroidx/core/graphics/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/i$j;->p:Landroidx/core/graphics/e;

    :cond_0
    iget-object v0, p0, Landroidx/core/view/i$j;->p:Landroidx/core/graphics/e;

    return-object v0
.end method

.method public r(Landroidx/core/graphics/e;)V
    .locals 0

    .line 1
    return-void
.end method
