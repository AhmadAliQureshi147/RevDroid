.class public final Landroidx/core/view/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/e$b;,
        Landroidx/core/view/e$c;,
        Landroidx/core/view/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/core/view/e$c;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/e$b;

    invoke-direct {v0, p1}, Landroidx/core/view/e$b;-><init>(Landroid/view/View;)V

    :goto_0
    iput-object v0, p0, Landroidx/core/view/e;->a:Landroidx/core/view/e$c;

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/core/view/e$a;

    invoke-direct {v0, p1}, Landroidx/core/view/e$a;-><init>(Landroid/view/View;)V

    goto :goto_0

    :goto_1
    return-void
.end method
