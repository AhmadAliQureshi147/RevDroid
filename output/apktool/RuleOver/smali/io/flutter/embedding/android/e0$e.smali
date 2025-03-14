.class Lio/flutter/embedding/android/e0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/android/e0;->A(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lio/flutter/embedding/android/e0;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/e0;Lio/flutter/embedding/engine/renderer/FlutterRenderer;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/e0$e;->c:Lio/flutter/embedding/android/e0;

    iput-object p2, p0, Lio/flutter/embedding/android/e0$e;->a:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iput-object p3, p0, Lio/flutter/embedding/android/e0$e;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/e0$e;->a:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->l(Lio/flutter/embedding/engine/renderer/j;)V

    iget-object v0, p0, Lio/flutter/embedding/android/e0$e;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lio/flutter/embedding/android/e0$e;->c:Lio/flutter/embedding/android/e0;

    iget-object v1, v0, Lio/flutter/embedding/android/e0;->d:Lio/flutter/embedding/engine/renderer/k;

    instance-of v1, v1, Lio/flutter/embedding/android/r;

    if-nez v1, :cond_0

    invoke-static {v0}, Lio/flutter/embedding/android/e0;->i(Lio/flutter/embedding/android/e0;)Lio/flutter/embedding/android/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/e0$e;->c:Lio/flutter/embedding/android/e0;

    invoke-static {v0}, Lio/flutter/embedding/android/e0;->i(Lio/flutter/embedding/android/e0;)Lio/flutter/embedding/android/r;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/android/r;->d()V

    iget-object v0, p0, Lio/flutter/embedding/android/e0$e;->c:Lio/flutter/embedding/android/e0;

    invoke-static {v0}, Lio/flutter/embedding/android/e0;->j(Lio/flutter/embedding/android/e0;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method
