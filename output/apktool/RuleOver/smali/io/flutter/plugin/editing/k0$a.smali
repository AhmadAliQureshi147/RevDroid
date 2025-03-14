.class Lio/flutter/plugin/editing/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/w$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/k0;-><init>(Landroid/view/View;Lf0/w;Lio/flutter/plugin/platform/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/flutter/plugin/editing/k0;


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/k0;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/k0;->z(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-static {v0}, Lio/flutter/plugin/editing/k0;->f(Lio/flutter/plugin/editing/k0;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/k0;->k()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-static {v0}, Lio/flutter/plugin/editing/k0;->b(Lio/flutter/plugin/editing/k0;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugin/editing/k0;->D(Landroid/view/View;)V

    return-void
.end method

.method public e(Lf0/w$e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-static {v0}, Lio/flutter/plugin/editing/k0;->b(Lio/flutter/plugin/editing/k0;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/editing/k0;->C(Landroid/view/View;Lf0/w$e;)V

    return-void
.end method

.method public f(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-static {v0, p1, p2}, Lio/flutter/plugin/editing/k0;->h(Lio/flutter/plugin/editing/k0;IZ)V

    return-void
.end method

.method public g(DD[D)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/flutter/plugin/editing/k0;->i(Lio/flutter/plugin/editing/k0;DD[D)V

    return-void
.end method

.method public h(Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-static {v0}, Lio/flutter/plugin/editing/k0;->g(Lio/flutter/plugin/editing/k0;)Landroid/view/autofill/AutofillManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-static {p1}, Lio/flutter/plugin/editing/k0;->g(Lio/flutter/plugin/editing/k0;)Landroid/view/autofill/AutofillManager;

    move-result-object p1

    invoke-static {p1}, Lio/flutter/plugin/editing/i0;->a(Landroid/view/autofill/AutofillManager;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-static {p1}, Lio/flutter/plugin/editing/k0;->g(Lio/flutter/plugin/editing/k0;)Landroid/view/autofill/AutofillManager;

    move-result-object p1

    invoke-static {p1}, Lio/flutter/plugin/editing/j0;->a(Landroid/view/autofill/AutofillManager;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-static {v0}, Lio/flutter/plugin/editing/k0;->c(Lio/flutter/plugin/editing/k0;)Lio/flutter/plugin/editing/k0$c;

    move-result-object v0

    iget-object v0, v0, Lio/flutter/plugin/editing/k0$c;->a:Lio/flutter/plugin/editing/k0$c$a;

    sget-object v1, Lio/flutter/plugin/editing/k0$c$a;->h:Lio/flutter/plugin/editing/k0$c$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-static {v0}, Lio/flutter/plugin/editing/k0;->d(Lio/flutter/plugin/editing/k0;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-static {v0}, Lio/flutter/plugin/editing/k0;->b(Lio/flutter/plugin/editing/k0;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/k0;->e(Lio/flutter/plugin/editing/k0;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public j(ILf0/w$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugin/editing/k0$a;->a:Lio/flutter/plugin/editing/k0;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/k0;->B(ILf0/w$b;)V

    return-void
.end method
