.class public final synthetic Lio/flutter/embedding/android/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/flutter/embedding/android/l0;

.field public final synthetic f:Lio/flutter/embedding/android/n0$c;

.field public final synthetic g:Landroid/view/KeyEvent;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/android/l0;Lio/flutter/embedding/android/n0$c;Landroid/view/KeyEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/k0;->e:Lio/flutter/embedding/android/l0;

    iput-object p2, p0, Lio/flutter/embedding/android/k0;->f:Lio/flutter/embedding/android/n0$c;

    iput-object p3, p0, Lio/flutter/embedding/android/k0;->g:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/k0;->e:Lio/flutter/embedding/android/l0;

    iget-object v1, p0, Lio/flutter/embedding/android/k0;->f:Lio/flutter/embedding/android/n0$c;

    iget-object v2, p0, Lio/flutter/embedding/android/k0;->g:Landroid/view/KeyEvent;

    invoke-static {v0, v1, v2}, Lio/flutter/embedding/android/l0;->b(Lio/flutter/embedding/android/l0;Lio/flutter/embedding/android/n0$c;Landroid/view/KeyEvent;)V

    return-void
.end method
