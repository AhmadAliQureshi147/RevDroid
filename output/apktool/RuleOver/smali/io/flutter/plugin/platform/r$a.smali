.class Lio/flutter/plugin/platform/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/q$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/platform/r;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/r;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic j(Lio/flutter/plugin/platform/r$a;Lio/flutter/plugin/platform/y;FLf0/q$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/plugin/platform/r$a;->k(Lio/flutter/plugin/platform/y;FLf0/q$b;)V

    return-void
.end method

.method private synthetic k(Lio/flutter/plugin/platform/y;FLf0/q$b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/r;->n(Lio/flutter/plugin/platform/r;Lio/flutter/plugin/platform/y;)V

    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v0}, Lio/flutter/plugin/platform/r;->k(Lio/flutter/plugin/platform/r;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {p2}, Lio/flutter/plugin/platform/r;->i(Lio/flutter/plugin/platform/r;)F

    move-result p2

    :goto_0
    new-instance v0, Lf0/q$c;

    iget-object v1, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-virtual {p1}, Lio/flutter/plugin/platform/y;->d()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v1, v2, v3, p2}, Lio/flutter/plugin/platform/r;->o(Lio/flutter/plugin/platform/r;DF)I

    move-result v1

    iget-object v2, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-virtual {p1}, Lio/flutter/plugin/platform/y;->c()I

    move-result p1

    int-to-double v3, p1

    invoke-static {v2, v3, v4, p2}, Lio/flutter/plugin/platform/r;->o(Lio/flutter/plugin/platform/r;DF)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lf0/q$c;-><init>(II)V

    invoke-interface {p3, v0}, Lf0/q$b;->a(Lf0/q$c;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/r;->d(I)Z

    move-result v0

    const-string v1, "PlatformViewsController"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    iget-object v0, v0, Lio/flutter/plugin/platform/r;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/y;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/y;->e()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing focus on a null view with id: "

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lx/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    return-void

    :cond_1
    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v0}, Lio/flutter/plugin/platform/r;->t(Lio/flutter/plugin/platform/r;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing focus on an unknown view with id: "

    goto :goto_0
.end method

.method public b(Lf0/q$f;)V
    .locals 4

    .line 1
    iget v0, p1, Lf0/q$f;->a:I

    iget-object v1, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v1}, Lio/flutter/plugin/platform/r;->k(Lio/flutter/plugin/platform/r;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-virtual {v2, v0}, Lio/flutter/plugin/platform/r;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    iget-object v2, v2, Lio/flutter/plugin/platform/r;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/y;

    iget-object v2, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p1, v3}, Lio/flutter/plugin/platform/r;->h0(FLf0/q$f;Z)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/y;->b(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    iget-object p1, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {p1}, Lio/flutter/plugin/platform/r;->t(Lio/flutter/plugin/platform/r;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending touch to an unknown view with id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlatformViewsController"

    invoke-static {v0, p1}, Lx/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v0}, Lio/flutter/plugin/platform/r;->t(Lio/flutter/plugin/platform/r;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing unknown platform view with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlatformViewsController"

    invoke-static {v0, p1}, Lx/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/r;->m(Lio/flutter/plugin/platform/r;Z)Z

    return-void
.end method

.method public e(Lf0/q$e;Lf0/q$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    iget-wide v1, p1, Lf0/q$e;->b:D

    invoke-static {v0, v1, v2}, Lio/flutter/plugin/platform/r;->h(Lio/flutter/plugin/platform/r;D)I

    move-result v0

    iget-object v1, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    iget-wide v2, p1, Lf0/q$e;->c:D

    invoke-static {v1, v2, v3}, Lio/flutter/plugin/platform/r;->h(Lio/flutter/plugin/platform/r;D)I

    move-result v1

    iget p1, p1, Lf0/q$e;->a:I

    iget-object v2, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-virtual {v2, p1}, Lio/flutter/plugin/platform/r;->d(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v2}, Lio/flutter/plugin/platform/r;->i(Lio/flutter/plugin/platform/r;)F

    move-result v2

    iget-object v3, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    iget-object v3, v3, Lio/flutter/plugin/platform/r;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/flutter/plugin/platform/y;

    iget-object v3, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v3, p1}, Lio/flutter/plugin/platform/r;->j(Lio/flutter/plugin/platform/r;Lio/flutter/plugin/platform/y;)V

    new-instance v3, Lio/flutter/plugin/platform/q;

    invoke-direct {v3, p0, p1, v2, p2}, Lio/flutter/plugin/platform/q;-><init>(Lio/flutter/plugin/platform/r$a;Lio/flutter/plugin/platform/y;FLf0/q$b;)V

    invoke-virtual {p1, v0, v1, v3}, Lio/flutter/plugin/platform/y;->i(IILjava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p2, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {p2}, Lio/flutter/plugin/platform/r;->t(Lio/flutter/plugin/platform/r;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    iget-object p2, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {p2}, Lio/flutter/plugin/platform/r;->q(Lio/flutter/plugin/platform/r;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/flutter/plugin/platform/n;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Resizing unknown platform view with id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlatformViewsController"

    invoke-static {p2, p1}, Lx/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(IDD)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/r;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v0}, Lio/flutter/plugin/platform/r;->q(Lio/flutter/plugin/platform/r;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/n;

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Setting offset for unknown platform view with id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlatformViewsController"

    invoke-static {p2, p1}, Lx/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {p1, p2, p3}, Lio/flutter/plugin/platform/r;->h(Lio/flutter/plugin/platform/r;D)I

    move-result p1

    iget-object p2, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {p2, p4, p5}, Lio/flutter/plugin/platform/r;->h(Lio/flutter/plugin/platform/r;D)I

    move-result p2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, p3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p2, p3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0, p3}, Lio/flutter/plugin/platform/n;->a(Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public g(Lf0/q$d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lio/flutter/plugin/platform/r;->f(Lio/flutter/plugin/platform/r;I)V

    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/r;->g(Lio/flutter/plugin/platform/r;Lf0/q$d;)V

    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/platform/r;->C(Lf0/q$d;Z)Lio/flutter/plugin/platform/j;

    const/4 v0, 0x0

    iget-object v1, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v1, v0, p1}, Lio/flutter/plugin/platform/r;->p(Lio/flutter/plugin/platform/r;Lio/flutter/plugin/platform/j;Lf0/q$d;)V

    return-void
.end method

.method public h(II)V
    .locals 3

    .line 1
    invoke-static {p2}, Lio/flutter/plugin/platform/r;->l(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/r;->d(I)Z

    move-result v0

    const-string v1, "PlatformViewsController"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    iget-object v0, v0, Lio/flutter/plugin/platform/r;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/y;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/y;->e()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting direction to a null view with id: "

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lx/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutDirection(I)V

    return-void

    :cond_1
    iget-object p2, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {p2}, Lio/flutter/plugin/platform/r;->t(Lio/flutter/plugin/platform/r;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting direction to an unknown view with id: "

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set unknown direction value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "(view id: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Lf0/q$d;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/r;->g(Lio/flutter/plugin/platform/r;Lf0/q$d;)V

    iget v0, p1, Lf0/q$d;->a:I

    iget-object v1, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v1}, Lio/flutter/plugin/platform/r;->q(Lio/flutter/plugin/platform/r;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v1}, Lio/flutter/plugin/platform/r;->r(Lio/flutter/plugin/platform/r;)Lio/flutter/view/TextureRegistry;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    invoke-static {v1}, Lio/flutter/plugin/platform/r;->s(Lio/flutter/plugin/platform/r;)Lio/flutter/embedding/android/e0;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flutter view is null. This means the platform views controller doesn\'t have an attached view, view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/r$a;->a:Lio/flutter/plugin/platform/r;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/platform/r;->C(Lf0/q$d;Z)Lio/flutter/plugin/platform/j;

    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Texture registry is null. This means that platform views controller was detached, view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create an already created platform view, view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
