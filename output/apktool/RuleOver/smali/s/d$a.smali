.class final synthetic Ls/d$a;
.super Lw0/j;
.source "SourceFile"

# interfaces
.implements Lv0/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls/d;->b(Landroid/content/Context;Ljava/util/concurrent/Executor;Lg/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 1
    const/4 v1, 0x1

    const-class v3, Ls/g;

    const-string v4, "accept"

    const-string v5, "accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lw0/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Ls/d$a;->k(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method

.method public final k(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 1

    .line 1
    const-string v0, "p0"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v0, Ls/g;

    invoke-virtual {v0, p1}, Ls/g;->a(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    return-void
.end method
