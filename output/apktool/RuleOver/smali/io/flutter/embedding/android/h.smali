.class public final synthetic Lio/flutter/embedding/android/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lio/flutter/embedding/android/i;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/android/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/h;->a:Lio/flutter/embedding/android/i;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/h;->a:Lio/flutter/embedding/android/i;

    invoke-virtual {v0}, Lio/flutter/embedding/android/i;->onBackPressed()V

    return-void
.end method
