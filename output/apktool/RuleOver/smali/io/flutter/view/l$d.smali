.class Lio/flutter/view/l$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/l;-><init>(Landroid/view/View;Lf0/a;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic b:Lio/flutter/view/l;


# direct methods
.method constructor <init>(Lio/flutter/view/l;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/l$d;->b:Lio/flutter/view/l;

    iput-object p2, p0, Lio/flutter/view/l$d;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/l$d;->b:Lio/flutter/view/l;

    invoke-static {v0}, Lio/flutter/view/l;->k(Lio/flutter/view/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lio/flutter/view/l$d;->b:Lio/flutter/view/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/view/l;->n(Lio/flutter/view/l;Z)V

    iget-object v0, p0, Lio/flutter/view/l$d;->b:Lio/flutter/view/l;

    invoke-static {v0}, Lio/flutter/view/l;->h(Lio/flutter/view/l;)V

    :cond_1
    iget-object v0, p0, Lio/flutter/view/l$d;->b:Lio/flutter/view/l;

    invoke-static {v0}, Lio/flutter/view/l;->s(Lio/flutter/view/l;)Lio/flutter/view/l$k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/view/l$d;->b:Lio/flutter/view/l;

    invoke-static {v0}, Lio/flutter/view/l;->s(Lio/flutter/view/l;)Lio/flutter/view/l$k;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/l$d;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lio/flutter/view/l$k;->a(ZZ)V

    :cond_2
    return-void
.end method
