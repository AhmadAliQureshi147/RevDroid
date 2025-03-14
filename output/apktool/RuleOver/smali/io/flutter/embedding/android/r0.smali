.class public Lio/flutter/embedding/android/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lp/a;


# direct methods
.method public constructor <init>(Lp/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/r0;->a:Lp/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lg/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/r0;->a:Lp/a;

    invoke-virtual {v0, p1, p2, p3}, Lp/a;->b(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lg/a;)V

    return-void
.end method

.method public b(Lg/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/r0;->a:Lp/a;

    invoke-virtual {v0, p1}, Lp/a;->c(Lg/a;)V

    return-void
.end method
