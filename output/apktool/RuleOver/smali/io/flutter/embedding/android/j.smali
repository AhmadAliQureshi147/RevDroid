.class Lio/flutter/embedding/android/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/android/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/j$c;
    }
.end annotation


# instance fields
.field private a:Lio/flutter/embedding/android/j$c;

.field private b:Lio/flutter/embedding/engine/a;

.field c:Lio/flutter/embedding/android/e0;

.field private d:Lio/flutter/plugin/platform/h;

.field e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/Integer;

.field private k:Lio/flutter/embedding/engine/d;

.field private final l:Lio/flutter/embedding/engine/renderer/j;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/j$c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/android/j;-><init>(Lio/flutter/embedding/android/j$c;Lio/flutter/embedding/engine/d;)V

    return-void
.end method

.method constructor <init>(Lio/flutter/embedding/android/j$c;Lio/flutter/embedding/engine/d;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/embedding/android/j$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/j$a;-><init>(Lio/flutter/embedding/android/j;)V

    iput-object v0, p0, Lio/flutter/embedding/android/j;->l:Lio/flutter/embedding/engine/renderer/j;

    iput-object p1, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/embedding/android/j;->h:Z

    iput-object p2, p0, Lio/flutter/embedding/android/j;->k:Lio/flutter/embedding/engine/d;

    return-void
.end method

.method static synthetic a(Lio/flutter/embedding/android/j;)Lio/flutter/embedding/android/j$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    return-object p0
.end method

.method static synthetic d(Lio/flutter/embedding/android/j;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/flutter/embedding/android/j;->g:Z

    return p0
.end method

.method static synthetic e(Lio/flutter/embedding/android/j;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/embedding/android/j;->g:Z

    return p1
.end method

.method static synthetic f(Lio/flutter/embedding/android/j;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/flutter/embedding/android/j;->h:Z

    return p1
.end method

.method private g(Lio/flutter/embedding/engine/d$b;)Lio/flutter/embedding/engine/d$b;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lx/a;->e()Lx/a;

    move-result-object v0

    invoke-virtual {v0}, Lx/a;->c()La0/d;

    move-result-object v0

    invoke-virtual {v0}, La0/d;->g()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ly/a$b;

    iget-object v2, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v2}, Lio/flutter/embedding/android/j$c;->z()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ly/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/j;->q(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "/"

    :cond_2
    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/d$b;->i(Ly/a$b;)Lio/flutter/embedding/engine/d$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/d$b;->k(Ljava/lang/String;)Lio/flutter/embedding/engine/d$b;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/d$b;->j(Ljava/util/List;)Lio/flutter/embedding/engine/d$b;

    move-result-object p1

    return-object p1
.end method

.method private j(Lio/flutter/embedding/android/e0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->p()Lio/flutter/embedding/android/p0;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/p0;->e:Lio/flutter/embedding/android/p0;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/flutter/embedding/android/j;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/j;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    new-instance v0, Lio/flutter/embedding/android/j$b;

    invoke-direct {v0, p0, p1}, Lio/flutter/embedding/android/j$b;-><init>(Lio/flutter/embedding/android/j;Lio/flutter/embedding/android/e0;)V

    iput-object v0, p0, Lio/flutter/embedding/android/j;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/android/j;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot delay the first Android view draw when the render mode is not set to `RenderMode.surface`."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Ly/a;

    move-result-object v0

    invoke-virtual {v0}, Ly/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/j;->q(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "/"

    :cond_2
    iget-object v1, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v1}, Lio/flutter/embedding/android/j$c;->B()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing Dart entrypoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v3}, Lio/flutter/embedding/android/j$c;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", library uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v2, "\"\""

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", and sending initial route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "FlutterActivityAndFragmentDelegate"

    invoke-static {v3, v2}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v2}, Lio/flutter/embedding/engine/a;->o()Lf0/n;

    move-result-object v2

    invoke-virtual {v2, v0}, Lf0/n;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {}, Lx/a;->e()Lx/a;

    move-result-object v0

    invoke-virtual {v0}, Lx/a;->c()La0/d;

    move-result-object v0

    invoke-virtual {v0}, La0/d;->g()Ljava/lang/String;

    move-result-object v0

    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Ly/a$b;

    iget-object v2, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v2}, Lio/flutter/embedding/android/j$c;->z()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ly/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v2, Ly/a$b;

    iget-object v3, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v3}, Lio/flutter/embedding/android/j$c;->z()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Ly/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Ly/a;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v2}, Lio/flutter/embedding/android/j$c;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ly/a;->e(Ly/a$b;Ljava/util/List;)V

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute method on a destroyed FlutterActivityAndFragmentDelegate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private q(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method A(I[Ljava/lang/String;[I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onRequestPermissionsResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\npermissions: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ngrantResults: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Ld0/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ld0/b;->a(I[Ljava/lang/String;[I)Z

    goto :goto_0

    :cond_0
    const-string p1, "onRequestPermissionResult() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Lx/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method B(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onRestoreInstanceState. Giving framework and plugins an opportunity to restore state."

    invoke-static {v0, v1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    if-eqz p1, :cond_0

    const-string v0, "plugins"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "framework"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p1, v0

    :goto_0
    iget-object v1, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v1}, Lio/flutter/embedding/android/j$c;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->u()Lf0/s;

    move-result-object v1

    invoke-virtual {v1, p1}, Lf0/s;->j([B)V

    :cond_1
    iget-object p1, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {p1}, Lio/flutter/embedding/android/j$c;->o()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->i()Ld0/b;

    move-result-object p1

    invoke-interface {p1, v0}, Ld0/b;->c(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method C()V
    .locals 2

    .line 1
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Lf0/k;

    move-result-object v0

    invoke-virtual {v0}, Lf0/k;->e()V

    :cond_0
    return-void
.end method

.method D(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onSaveInstanceState. Giving framework and plugins an opportunity to save state."

    invoke-static {v0, v1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->u()Lf0/s;

    move-result-object v0

    invoke-virtual {v0}, Lf0/s;->h()[B

    move-result-object v0

    const-string v1, "framework"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/a;->i()Ld0/b;

    move-result-object v1

    invoke-interface {v1, v0}, Ld0/b;->h(Landroid/os/Bundle;)V

    const-string v1, "plugins"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method E()V
    .locals 2

    .line 1
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    invoke-direct {p0}, Lio/flutter/embedding/android/j;->k()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lio/flutter/embedding/android/e0;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method F()V
    .locals 2

    .line 1
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Lf0/k;

    move-result-object v0

    invoke-virtual {v0}, Lf0/k;->d()V

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/j;->j:Ljava/lang/Integer;

    iget-object v0, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/e0;->setVisibility(I)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->k(I)V

    :cond_1
    return-void
.end method

.method G(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lio/flutter/embedding/android/j;->h:Z

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    if-lt p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->k()Ly/a;

    move-result-object v0

    invoke-virtual {v0}, Ly/a;->g()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->x()Lf0/v;

    move-result-object v0

    invoke-virtual {v0}, Lf0/v;->a()V

    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->k(I)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Lio/flutter/plugin/platform/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/r;->Z(I)V

    :cond_2
    return-void
.end method

.method H()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onUserLeaveHint() to FlutterEngine."

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Ld0/b;

    move-result-object v0

    invoke-interface {v0}, Ld0/b;->i()V

    goto :goto_0

    :cond_0
    const-string v0, "onUserLeaveHint() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lx/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method I(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received onWindowFocusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Lf0/k;

    move-result-object p1

    invoke-virtual {p1}, Lf0/k;->a()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Lf0/k;

    move-result-object p1

    invoke-virtual {p1}, Lf0/k;->f()V

    :cond_2
    :goto_1
    return-void
.end method

.method J()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    iput-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    iput-object v0, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    iput-object v0, p0, Lio/flutter/embedding/android/j;->d:Lio/flutter/plugin/platform/h;

    return-void
.end method

.method K()V
    .locals 5

    .line 1
    const-string v0, "Setting up FlutterEngine."

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->w()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\'"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lio/flutter/embedding/engine/b;->b()Lio/flutter/embedding/engine/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/b;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/a;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    iput-boolean v3, p0, Lio/flutter/embedding/android/j;->f:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested cached FlutterEngine did not exist in the FlutterEngineCache: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->h()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v0, v4}, Lio/flutter/embedding/android/j$c;->n(Landroid/content/Context;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lio/flutter/embedding/android/j;->f:Z

    return-void

    :cond_2
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lio/flutter/embedding/engine/e;->b()Lio/flutter/embedding/engine/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/e;->a(Ljava/lang/String;)Lio/flutter/embedding/engine/d;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lio/flutter/embedding/engine/d$b;

    iget-object v2, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v2}, Lio/flutter/embedding/android/j$c;->h()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/flutter/embedding/engine/d$b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/j;->g(Lio/flutter/embedding/engine/d$b;)Lio/flutter/embedding/engine/d$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/flutter/embedding/engine/d;->a(Lio/flutter/embedding/engine/d$b;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    iput-boolean v3, p0, Lio/flutter/embedding/android/j;->f:Z

    return-void

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The requested cached FlutterEngineGroup did not exist in the FlutterEngineGroupCache: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "No preferred FlutterEngine was provided. Creating a new FlutterEngine for this FlutterFragment."

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->k:Lio/flutter/embedding/engine/d;

    if-nez v0, :cond_5

    new-instance v0, Lio/flutter/embedding/engine/d;

    iget-object v1, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v1}, Lio/flutter/embedding/android/j$c;->h()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v2}, Lio/flutter/embedding/android/j$c;->k()Lio/flutter/embedding/engine/l;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/embedding/engine/l;->b()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/d;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lio/flutter/embedding/engine/d$b;

    iget-object v2, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v2}, Lio/flutter/embedding/android/j$c;->h()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/d$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lio/flutter/embedding/engine/d$b;->h(Z)Lio/flutter/embedding/engine/d$b;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v2}, Lio/flutter/embedding/android/j$c;->y()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/flutter/embedding/engine/d$b;->l(Z)Lio/flutter/embedding/engine/d$b;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/flutter/embedding/android/j;->g(Lio/flutter/embedding/engine/d$b;)Lio/flutter/embedding/engine/d$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/d;->a(Lio/flutter/embedding/engine/d$b;)Lio/flutter/embedding/engine/a;

    move-result-object v0

    goto :goto_0
.end method

.method L(Landroid/window/BackEvent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding startBackGesture() to FlutterEngine."

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Lf0/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf0/f;->d(Landroid/window/BackEvent;)V

    goto :goto_0

    :cond_0
    const-string p1, "Invoked startBackGesture() before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Lx/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method M(Landroid/window/BackEvent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding updateBackGestureProgress() to FlutterEngine."

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Lf0/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf0/f;->e(Landroid/window/BackEvent;)V

    goto :goto_0

    :cond_0
    const-string p1, "Invoked updateBackGestureProgress() before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Lx/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method N()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->d:Lio/flutter/plugin/platform/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/h;->E()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->b()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The internal FlutterEngine created by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been attached to by another activity. To persist a FlutterEngine beyond the ownership of this activity, explicitly create a FlutterEngine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/android/j;->m()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method h()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding cancelBackGesture() to FlutterEngine."

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Lf0/f;

    move-result-object v0

    invoke-virtual {v0}, Lf0/f;->b()V

    goto :goto_0

    :cond_0
    const-string v0, "Invoked cancelBackGesture() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lx/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method i()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding commitBackGesture() to FlutterEngine."

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->j()Lf0/f;

    move-result-object v0

    invoke-virtual {v0}, Lf0/f;->c()V

    goto :goto_0

    :cond_0
    const-string v0, "Invoked commitBackGesture() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lx/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public m()Landroid/app/Activity;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "FlutterActivityAndFragmentDelegate\'s getAppComponent should only be queried after onAttach, when the host\'s activity should always be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method n()Lio/flutter/embedding/engine/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    return-object v0
.end method

.method o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/embedding/android/j;->i:Z

    return v0
.end method

.method p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/flutter/embedding/android/j;->f:Z

    return v0
.end method

.method r(IILandroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forwarding onActivityResult() to FlutterEngine:\nrequestCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nresultCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\ndata: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Ld0/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ld0/b;->b(IILandroid/content/Intent;)Z

    goto :goto_0

    :cond_0
    const-string p1, "onActivityResult() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Lx/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method s(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object p1, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lio/flutter/embedding/android/j;->K()V

    :cond_0
    iget-object p1, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {p1}, Lio/flutter/embedding/android/j$c;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "FlutterActivityAndFragmentDelegate"

    const-string v0, "Attaching FlutterEngine to the Activity that owns this delegate."

    invoke-static {p1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/a;->i()Ld0/b;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->f()Landroidx/lifecycle/h;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Ld0/b;->d(Lio/flutter/embedding/android/d;Landroidx/lifecycle/h;)V

    :cond_1
    iget-object p1, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {p1}, Lio/flutter/embedding/android/j$c;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {p1, v0, v1}, Lio/flutter/embedding/android/j$c;->C(Landroid/app/Activity;Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/h;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/j;->d:Lio/flutter/plugin/platform/h;

    iget-object p1, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {p1, v0}, Lio/flutter/embedding/android/j$c;->x(Lio/flutter/embedding/engine/a;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/flutter/embedding/android/j;->i:Z

    return-void
.end method

.method t()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onBackPressed() to FlutterEngine."

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->o()Lf0/n;

    move-result-object v0

    invoke-virtual {v0}, Lf0/n;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "Invoked onBackPressed() before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lx/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method u(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;
    .locals 4

    .line 1
    const-string p1, "Creating FlutterView."

    const-string p2, "FlutterActivityAndFragmentDelegate"

    invoke-static {p2, p1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object p1, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {p1}, Lio/flutter/embedding/android/j$c;->p()Lio/flutter/embedding/android/p0;

    move-result-object p1

    sget-object p3, Lio/flutter/embedding/android/p0;->e:Lio/flutter/embedding/android/p0;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p3, :cond_1

    new-instance p1, Lio/flutter/embedding/android/s;

    iget-object p3, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {p3}, Lio/flutter/embedding/android/j$c;->h()Landroid/content/Context;

    move-result-object p3

    iget-object v2, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v2}, Lio/flutter/embedding/android/j$c;->t()Lio/flutter/embedding/android/q0;

    move-result-object v2

    sget-object v3, Lio/flutter/embedding/android/q0;->f:Lio/flutter/embedding/android/q0;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p1, p3, v0}, Lio/flutter/embedding/android/s;-><init>(Landroid/content/Context;Z)V

    iget-object p3, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {p3, p1}, Lio/flutter/embedding/android/j$c;->D(Lio/flutter/embedding/android/s;)V

    new-instance p3, Lio/flutter/embedding/android/e0;

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->h()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lio/flutter/embedding/android/e0;-><init>(Landroid/content/Context;Lio/flutter/embedding/android/s;)V

    goto :goto_2

    :cond_1
    new-instance p1, Lio/flutter/embedding/android/t;

    iget-object p3, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {p3}, Lio/flutter/embedding/android/j$c;->h()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lio/flutter/embedding/android/t;-><init>(Landroid/content/Context;)V

    iget-object p3, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {p3}, Lio/flutter/embedding/android/j$c;->t()Lio/flutter/embedding/android/q0;

    move-result-object p3

    sget-object v2, Lio/flutter/embedding/android/q0;->e:Lio/flutter/embedding/android/q0;

    if-ne p3, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object p3, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {p3, p1}, Lio/flutter/embedding/android/j$c;->v(Lio/flutter/embedding/android/t;)V

    new-instance p3, Lio/flutter/embedding/android/e0;

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->h()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lio/flutter/embedding/android/e0;-><init>(Landroid/content/Context;Lio/flutter/embedding/android/t;)V

    :goto_2
    iput-object p3, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    iget-object p1, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    iget-object p3, p0, Lio/flutter/embedding/android/j;->l:Lio/flutter/embedding/engine/renderer/j;

    invoke-virtual {p1, p3}, Lio/flutter/embedding/android/e0;->l(Lio/flutter/embedding/engine/renderer/j;)V

    iget-object p1, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {p1}, Lio/flutter/embedding/android/j$c;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Attaching FlutterEngine to FlutterView."

    invoke-static {p2, p1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    iget-object p2, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {p1, p2}, Lio/flutter/embedding/android/e0;->n(Lio/flutter/embedding/engine/a;)V

    :cond_3
    iget-object p1, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    invoke-virtual {p1, p4}, Landroid/view/View;->setId(I)V

    if-eqz p5, :cond_4

    iget-object p1, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    invoke-direct {p0, p1}, Lio/flutter/embedding/android/j;->j(Lio/flutter/embedding/android/e0;)V

    :cond_4
    iget-object p1, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    return-object p1
.end method

.method v()V
    .locals 2

    .line 1
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/j;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/j;->e:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/flutter/embedding/android/e0;->s()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->c:Lio/flutter/embedding/android/e0;

    iget-object v1, p0, Lio/flutter/embedding/android/j;->l:Lio/flutter/embedding/engine/renderer/j;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/android/e0;->y(Lio/flutter/embedding/engine/renderer/j;)V

    :cond_1
    return-void
.end method

.method w()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/flutter/embedding/android/j;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "onDetach()"

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    iget-object v2, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-interface {v0, v2}, Lio/flutter/embedding/android/j$c;->A(Lio/flutter/embedding/engine/a;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Detaching FlutterEngine from the Activity that owns this Fragment."

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Ld0/b;

    move-result-object v0

    invoke-interface {v0}, Ld0/b;->j()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Ld0/b;

    move-result-object v0

    invoke-interface {v0}, Ld0/b;->f()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lio/flutter/embedding/android/j;->d:Lio/flutter/plugin/platform/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/flutter/plugin/platform/h;->q()V

    iput-object v1, p0, Lio/flutter/embedding/android/j;->d:Lio/flutter/plugin/platform/h;

    :cond_3
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Lf0/k;

    move-result-object v0

    invoke-virtual {v0}, Lf0/k;->b()V

    :cond_4
    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->g()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lio/flutter/embedding/engine/b;->b()Lio/flutter/embedding/engine/b;

    move-result-object v0

    iget-object v2, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v2}, Lio/flutter/embedding/android/j$c;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/flutter/embedding/engine/b;->d(Ljava/lang/String;)V

    :cond_5
    iput-object v1, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/j;->i:Z

    return-void
.end method

.method x(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    const-string v1, "FlutterActivityAndFragmentDelegate"

    if-eqz v0, :cond_0

    const-string v0, "Forwarding onNewIntent() to FlutterEngine and sending pushRouteInformation message."

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->i()Ld0/b;

    move-result-object v0

    invoke-interface {v0, p1}, Ld0/b;->e(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lio/flutter/embedding/android/j;->q(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->o()Lf0/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf0/n;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "onNewIntent() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, p1}, Lx/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method y()V
    .locals 2

    .line 1
    const-string v0, "FlutterActivityAndFragmentDelegate"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->a:Lio/flutter/embedding/android/j$c;

    invoke-interface {v0}, Lio/flutter/embedding/android/j$c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->l()Lf0/k;

    move-result-object v0

    invoke-virtual {v0}, Lf0/k;->c()V

    :cond_0
    return-void
.end method

.method z()V
    .locals 2

    .line 1
    const-string v0, "onPostResume()"

    const-string v1, "FlutterActivityAndFragmentDelegate"

    invoke-static {v1, v0}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/j;->l()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/flutter/embedding/android/j;->N()V

    iget-object v0, p0, Lio/flutter/embedding/android/j;->b:Lio/flutter/embedding/engine/a;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/a;->q()Lio/flutter/plugin/platform/r;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/plugin/platform/r;->Y()V

    goto :goto_0

    :cond_0
    const-string v0, "onPostResume() invoked before FlutterFragment was attached to an Activity."

    invoke-static {v1, v0}, Lx/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
