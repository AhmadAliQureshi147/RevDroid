.class public Landroidx/core/view/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/i$k;,
        Landroidx/core/view/i$l;,
        Landroidx/core/view/i$j;,
        Landroidx/core/view/i$i;,
        Landroidx/core/view/i$h;,
        Landroidx/core/view/i$g;,
        Landroidx/core/view/i$m;,
        Landroidx/core/view/i$b;,
        Landroidx/core/view/i$a;,
        Landroidx/core/view/i$n;,
        Landroidx/core/view/i$e;,
        Landroidx/core/view/i$d;,
        Landroidx/core/view/i$c;,
        Landroidx/core/view/i$f;
    }
.end annotation


# static fields
.field public static final b:Landroidx/core/view/i;


# instance fields
.field private final a:Landroidx/core/view/i$l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/core/view/i$k;->q:Landroidx/core/view/i;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/core/view/i$l;->b:Landroidx/core/view/i;

    :goto_0
    sput-object v0, Landroidx/core/view/i;->b:Landroidx/core/view/i;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/i$k;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/i$k;-><init>(Landroidx/core/view/i;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Landroidx/core/view/i$j;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/i$j;-><init>(Landroidx/core/view/i;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    new-instance v0, Landroidx/core/view/i$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/i$i;-><init>(Landroidx/core/view/i;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/core/view/i$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/view/i$h;-><init>(Landroidx/core/view/i;Landroid/view/WindowInsets;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/i;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    iget-object p1, p1, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    instance-of v1, p1, Landroidx/core/view/i$k;

    if-eqz v1, :cond_0

    new-instance v0, Landroidx/core/view/i$k;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/i$k;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/i$k;-><init>(Landroidx/core/view/i;Landroidx/core/view/i$k;)V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    instance-of v1, p1, Landroidx/core/view/i$j;

    if-eqz v1, :cond_1

    new-instance v0, Landroidx/core/view/i$j;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/i$j;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/i$j;-><init>(Landroidx/core/view/i;Landroidx/core/view/i$j;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    instance-of v0, p1, Landroidx/core/view/i$i;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/core/view/i$i;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/i$i;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/i$i;-><init>(Landroidx/core/view/i;Landroidx/core/view/i$i;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroidx/core/view/i$h;

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/core/view/i$h;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/i$h;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/i$h;-><init>(Landroidx/core/view/i;Landroidx/core/view/i$h;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Landroidx/core/view/i$g;

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/core/view/i$g;

    move-object v1, p1

    check-cast v1, Landroidx/core/view/i$g;

    invoke-direct {v0, p0, v1}, Landroidx/core/view/i$g;-><init>(Landroidx/core/view/i;Landroidx/core/view/i$g;)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroidx/core/view/i$l;

    invoke-direct {v0, p0}, Landroidx/core/view/i$l;-><init>(Landroidx/core/view/i;)V

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p0}, Landroidx/core/view/i$l;->e(Landroidx/core/view/i;)V

    goto :goto_2

    :cond_5
    new-instance p1, Landroidx/core/view/i$l;

    invoke-direct {p1, p0}, Landroidx/core/view/i$l;-><init>(Landroidx/core/view/i;)V

    iput-object p1, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    :goto_2
    return-void
.end method

.method public static m(Landroid/view/WindowInsets;)Landroidx/core/view/i;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/view/i;->n(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/i;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/i;
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/view/i;

    invoke-static {p0}, Lg/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/core/view/i;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/core/view/g;->b(Landroid/view/View;)Landroidx/core/view/i;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/i;->j(Landroidx/core/view/i;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/view/i;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Landroidx/core/view/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    invoke-virtual {v0}, Landroidx/core/view/i$l;->a()Landroidx/core/view/i;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroidx/core/view/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    invoke-virtual {v0}, Landroidx/core/view/i$l;->b()Landroidx/core/view/i;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroidx/core/view/i;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    invoke-virtual {v0}, Landroidx/core/view/i$l;->c()Landroidx/core/view/i;

    move-result-object v0

    return-object v0
.end method

.method d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/i$l;->d(Landroid/view/View;)V

    return-void
.end method

.method public e()Landroidx/core/view/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    invoke-virtual {v0}, Landroidx/core/view/i$l;->f()Landroidx/core/view/b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/core/view/i;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroidx/core/view/i;

    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    iget-object p1, p1, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    invoke-static {v0, p1}, Lg/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)Landroidx/core/graphics/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/i$l;->g(I)Landroidx/core/graphics/e;

    move-result-object p1

    return-object p1
.end method

.method public g()Landroidx/core/graphics/e;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    invoke-virtual {v0}, Landroidx/core/view/i$l;->i()Landroidx/core/graphics/e;

    move-result-object v0

    return-object v0
.end method

.method h([Landroidx/core/graphics/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/i$l;->o([Landroidx/core/graphics/e;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/core/view/i$l;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method i(Landroidx/core/graphics/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/i$l;->p(Landroidx/core/graphics/e;)V

    return-void
.end method

.method j(Landroidx/core/view/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/i$l;->q(Landroidx/core/view/i;)V

    return-void
.end method

.method k(Landroidx/core/graphics/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    invoke-virtual {v0, p1}, Landroidx/core/view/i$l;->r(Landroidx/core/graphics/e;)V

    return-void
.end method

.method public l()Landroid/view/WindowInsets;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/view/i;->a:Landroidx/core/view/i$l;

    instance-of v1, v0, Landroidx/core/view/i$g;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/core/view/i$g;

    iget-object v0, v0, Landroidx/core/view/i$g;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
