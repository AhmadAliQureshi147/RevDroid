.class public final synthetic Lio/flutter/plugin/platform/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/flutter/plugin/platform/r$a;

.field public final synthetic f:Lio/flutter/plugin/platform/y;

.field public final synthetic g:F

.field public final synthetic h:Lf0/q$b;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/r$a;Lio/flutter/plugin/platform/y;FLf0/q$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/q;->e:Lio/flutter/plugin/platform/r$a;

    iput-object p2, p0, Lio/flutter/plugin/platform/q;->f:Lio/flutter/plugin/platform/y;

    iput p3, p0, Lio/flutter/plugin/platform/q;->g:F

    iput-object p4, p0, Lio/flutter/plugin/platform/q;->h:Lf0/q$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/platform/q;->e:Lio/flutter/plugin/platform/r$a;

    iget-object v1, p0, Lio/flutter/plugin/platform/q;->f:Lio/flutter/plugin/platform/y;

    iget v2, p0, Lio/flutter/plugin/platform/q;->g:F

    iget-object v3, p0, Lio/flutter/plugin/platform/q;->h:Lf0/q$b;

    invoke-static {v0, v1, v2, v3}, Lio/flutter/plugin/platform/r$a;->j(Lio/flutter/plugin/platform/r$a;Lio/flutter/plugin/platform/y;FLf0/q$b;)V

    return-void
.end method
