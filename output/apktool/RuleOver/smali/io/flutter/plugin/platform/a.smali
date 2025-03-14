.class Lio/flutter/plugin/platform/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lio/flutter/view/l;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/a;->a:Lio/flutter/view/l;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lio/flutter/view/l;->L(Landroid/view/MotionEvent;Z)Z

    move-result p1

    return p1
.end method

.method b(Lio/flutter/view/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugin/platform/a;->a:Lio/flutter/view/l;

    return-void
.end method
