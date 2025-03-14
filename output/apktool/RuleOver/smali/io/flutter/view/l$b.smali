.class Lio/flutter/view/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/view/l;


# direct methods
.method constructor <init>(Lio/flutter/view/l;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/l$b;->a:Lio/flutter/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/l$b;->a:Lio/flutter/view/l;

    invoke-static {v0}, Lio/flutter/view/l;->k(Lio/flutter/view/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/view/l$b;->a:Lio/flutter/view/l;

    if-eqz p1, :cond_1

    invoke-static {v0}, Lio/flutter/view/l;->m(Lio/flutter/view/l;)Lf0/a;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/l$b;->a:Lio/flutter/view/l;

    invoke-static {v1}, Lio/flutter/view/l;->l(Lio/flutter/view/l;)Lf0/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf0/a;->g(Lf0/a$b;)V

    iget-object v0, p0, Lio/flutter/view/l$b;->a:Lio/flutter/view/l;

    invoke-static {v0}, Lio/flutter/view/l;->m(Lio/flutter/view/l;)Lf0/a;

    move-result-object v0

    invoke-virtual {v0}, Lf0/a;->e()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/view/l;->n(Lio/flutter/view/l;Z)V

    iget-object v0, p0, Lio/flutter/view/l$b;->a:Lio/flutter/view/l;

    invoke-static {v0}, Lio/flutter/view/l;->m(Lio/flutter/view/l;)Lf0/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf0/a;->g(Lf0/a$b;)V

    iget-object v0, p0, Lio/flutter/view/l$b;->a:Lio/flutter/view/l;

    invoke-static {v0}, Lio/flutter/view/l;->m(Lio/flutter/view/l;)Lf0/a;

    move-result-object v0

    invoke-virtual {v0}, Lf0/a;->d()V

    :goto_0
    iget-object v0, p0, Lio/flutter/view/l$b;->a:Lio/flutter/view/l;

    invoke-static {v0}, Lio/flutter/view/l;->s(Lio/flutter/view/l;)Lio/flutter/view/l$k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/view/l$b;->a:Lio/flutter/view/l;

    invoke-static {v0}, Lio/flutter/view/l;->s(Lio/flutter/view/l;)Lio/flutter/view/l$k;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/l$b;->a:Lio/flutter/view/l;

    invoke-static {v1}, Lio/flutter/view/l;->t(Lio/flutter/view/l;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/flutter/view/l$k;->a(ZZ)V

    :cond_2
    return-void
.end method
