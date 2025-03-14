.class public final synthetic Lio/flutter/view/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/e;


# instance fields
.field public final synthetic a:Lio/flutter/view/l$l;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/view/l$l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/view/k;->a:Lio/flutter/view/l$l;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/view/k;->a:Lio/flutter/view/l$l;

    check-cast p1, Lio/flutter/view/l$l;

    invoke-static {v0, p1}, Lio/flutter/view/l;->b(Lio/flutter/view/l$l;Lio/flutter/view/l$l;)Z

    move-result p1

    return p1
.end method
