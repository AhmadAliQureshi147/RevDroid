.class Lio/flutter/embedding/android/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/j;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/j;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/j$a;->a:Lio/flutter/embedding/android/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/j$a;->a:Lio/flutter/embedding/android/j;

    invoke-static {v0}, Lio/flutter/embedding/android/j;->a(Lio/flutter/embedding/android/j;)Lio/flutter/embedding/android/j$c;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->d()V

    iget-object v0, p0, Lio/flutter/embedding/android/j$a;->a:Lio/flutter/embedding/android/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/flutter/embedding/android/j;->e(Lio/flutter/embedding/android/j;Z)Z

    iget-object v0, p0, Lio/flutter/embedding/android/j$a;->a:Lio/flutter/embedding/android/j;

    invoke-static {v0, v1}, Lio/flutter/embedding/android/j;->f(Lio/flutter/embedding/android/j;Z)Z

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/j$a;->a:Lio/flutter/embedding/android/j;

    invoke-static {v0}, Lio/flutter/embedding/android/j;->a(Lio/flutter/embedding/android/j;)Lio/flutter/embedding/android/j$c;

    move-result-object v0

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->g()V

    iget-object v0, p0, Lio/flutter/embedding/android/j$a;->a:Lio/flutter/embedding/android/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/embedding/android/j;->e(Lio/flutter/embedding/android/j;Z)Z

    return-void
.end method
