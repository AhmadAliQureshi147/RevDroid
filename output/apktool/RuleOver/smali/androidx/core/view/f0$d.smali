.class Landroidx/core/view/f0$d;
.super Landroidx/core/view/f0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final a:Landroidx/core/view/f0;

.field final b:Landroid/view/WindowInsetsController;

.field final c:Landroidx/core/view/e;

.field private final d:Ld/d;

.field protected e:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroidx/core/view/f0;Landroidx/core/view/e;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/core/view/g0;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroidx/core/view/f0$d;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/f0;Landroidx/core/view/e;)V

    iput-object p1, p0, Landroidx/core/view/f0$d;->e:Landroid/view/Window;

    return-void
.end method

.method constructor <init>(Landroid/view/WindowInsetsController;Landroidx/core/view/f0;Landroidx/core/view/e;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/core/view/f0$e;-><init>()V

    new-instance v0, Ld/d;

    invoke-direct {v0}, Ld/d;-><init>()V

    iput-object v0, p0, Landroidx/core/view/f0$d;->d:Ld/d;

    iput-object p1, p0, Landroidx/core/view/f0$d;->b:Landroid/view/WindowInsetsController;

    iput-object p2, p0, Landroidx/core/view/f0$d;->a:Landroidx/core/view/f0;

    iput-object p3, p0, Landroidx/core/view/f0$d;->c:Landroidx/core/view/e;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .line 1
    const/16 v0, 0x10

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/view/f0$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/core/view/f0$d;->c(I)V

    :cond_0
    iget-object p1, p0, Landroidx/core/view/f0$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1, v0, v0}, Landroidx/core/view/h0;->a(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/core/view/f0$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/core/view/f0$d;->d(I)V

    :cond_2
    iget-object p1, p0, Landroidx/core/view/f0$d;->b:Landroid/view/WindowInsetsController;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroidx/core/view/h0;->a(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 1
    const/16 v0, 0x2000

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/core/view/f0$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Landroidx/core/view/f0$d;->c(I)V

    :cond_0
    iget-object p1, p0, Landroidx/core/view/f0$d;->b:Landroid/view/WindowInsetsController;

    invoke-static {p1, v1, v1}, Landroidx/core/view/h0;->a(Landroid/view/WindowInsetsController;II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/core/view/f0$d;->e:Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/core/view/f0$d;->d(I)V

    :cond_2
    iget-object p1, p0, Landroidx/core/view/f0$d;->b:Landroid/view/WindowInsetsController;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Landroidx/core/view/h0;->a(Landroid/view/WindowInsetsController;II)V

    :goto_0
    return-void
.end method

.method protected c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/f0$d;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/f0$d;->e:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    not-int p1, p1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
