.class Lio/flutter/embedding/android/e0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/embedding/android/e0;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/e0;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/e0$d;->a:Lio/flutter/embedding/android/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/e0$d;->a:Lio/flutter/embedding/android/e0;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/e0;->setWindowInfoListenerDisplayFeatures(Lq/j;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lq/j;

    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/e0$d;->a(Lq/j;)V

    return-void
.end method
