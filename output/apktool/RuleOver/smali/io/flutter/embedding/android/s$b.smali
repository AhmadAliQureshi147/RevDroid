.class Lio/flutter/embedding/android/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/s;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/s;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/s$b;->a:Lio/flutter/embedding/android/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    const-string v0, "FlutterSurfaceView"

    const-string v1, "onFlutterUiDisplayed()"

    invoke-static {v0, v1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/s$b;->a:Lio/flutter/embedding/android/s;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lio/flutter/embedding/android/s$b;->a:Lio/flutter/embedding/android/s;

    invoke-static {v0}, Lio/flutter/embedding/android/s;->j(Lio/flutter/embedding/android/s;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/s$b;->a:Lio/flutter/embedding/android/s;

    invoke-static {v0}, Lio/flutter/embedding/android/s;->j(Lio/flutter/embedding/android/s;)Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->l(Lio/flutter/embedding/engine/renderer/j;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method
