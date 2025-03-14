.class public abstract Lio/flutter/embedding/android/i;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/android/j$c;
.implements Landroidx/lifecycle/l;


# static fields
.field public static final e:I


# instance fields
.field private a:Z

.field protected b:Lio/flutter/embedding/android/j;

.field private c:Landroidx/lifecycle/m;

.field private final d:Landroid/window/OnBackInvokedCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    sput v0, Lio/flutter/embedding/android/i;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/i;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lio/flutter/embedding/android/i;->J()Landroid/window/OnBackInvokedCallback;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/flutter/embedding/android/i;->d:Landroid/window/OnBackInvokedCallback;

    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m;-><init>(Landroidx/lifecycle/l;)V

    iput-object v0, p0, Lio/flutter/embedding/android/i;->c:Landroidx/lifecycle/m;

    return-void
.end method

.method private G()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private H()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->K()Lio/flutter/embedding/android/k;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/k;->f:Lio/flutter/embedding/android/k;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private I()Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lio/flutter/embedding/android/i;->e:I

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->p()Lio/flutter/embedding/android/p0;

    move-result-object v5

    sget-object v6, Lio/flutter/embedding/android/p0;->e:Lio/flutter/embedding/android/p0;

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lio/flutter/embedding/android/j;->u(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private J()Landroid/window/OnBackInvokedCallback;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    new-instance v0, Lio/flutter/embedding/android/i$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/i$a;-><init>(Lio/flutter/embedding/android/i;)V

    return-object v0

    :cond_0
    new-instance v0, Lio/flutter/embedding/android/h;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/h;-><init>(Lio/flutter/embedding/android/i;)V

    return-object v0
.end method

.method private N()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private R(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    const/4 v1, 0x0

    const-string v2, " "

    const-string v3, "FlutterActivity "

    const-string v4, "FlutterActivity"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " called after release."

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lx/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->o()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " called after detach."

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private S()V
    .locals 4

    .line 1
    const-string v0, "FlutterActivity"

    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->M()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "io.flutter.embedding.android.NormalTheme"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/content/Context;->setTheme(I)V

    goto :goto_0

    :cond_0
    const-string v1, "Using the launch theme as normal theme."

    invoke-static {v0, v1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Could not read meta-data for FlutterActivity. Using the launch theme as normal theme."

    invoke-static {v0, v1}, Lx/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public A(Lio/flutter/embedding/engine/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public B()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->M()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "io.flutter.EntrypointUri"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public C(Landroid/app/Activity;Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/h;
    .locals 1

    .line 1
    new-instance p1, Lio/flutter/plugin/platform/h;

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Lio/flutter/embedding/engine/a;->p()Lf0/o;

    move-result-object p2

    invoke-direct {p1, v0, p2, p0}, Lio/flutter/plugin/platform/h;-><init>(Landroid/app/Activity;Lf0/o;Lio/flutter/plugin/platform/h$d;)V

    return-object p1
.end method

.method public D(Lio/flutter/embedding/android/s;)V
    .locals 0

    .line 1
    return-void
.end method

.method public E()V
    .locals 1

    .line 1
    const-string v0, "cancelBackGesture"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->h()V

    :cond_0
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    const-string v0, "commitBackGesture"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->i()V

    :cond_0
    return-void
.end method

.method protected K()Lio/flutter/embedding/android/k;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "background_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/embedding/android/k;->valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/k;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lio/flutter/embedding/android/k;->e:Lio/flutter/embedding/android/k;

    return-object v0
.end method

.method protected L()Lio/flutter/embedding/engine/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->n()Lio/flutter/embedding/engine/a;

    move-result-object v0

    return-object v0
.end method

.method protected M()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public O()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lio/flutter/embedding/android/e;->a(Lio/flutter/embedding/android/i;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lio/flutter/embedding/android/i;->d:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1, v2}, Lio/flutter/embedding/android/g;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/android/i;->a:Z

    :cond_0
    return-void
.end method

.method public P()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->T()V

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->J()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    :cond_0
    return-void
.end method

.method public Q(Landroid/window/BackEvent;)V
    .locals 1

    .line 1
    const-string v0, "startBackGesture"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/j;->L(Landroid/window/BackEvent;)V

    :cond_0
    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lio/flutter/embedding/android/e;->a(Lio/flutter/embedding/android/i;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/android/i;->d:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Lio/flutter/embedding/android/f;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/i;->a:Z

    :cond_0
    return-void
.end method

.method public U(Landroid/window/BackEvent;)V
    .locals 1

    .line 1
    const-string v0, "updateBackGestureProgress"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/j;->M(Landroid/window/BackEvent;)V

    :cond_0
    return-void
.end method

.method public a()Landroid/app/Activity;
    .locals 0

    .line 1
    return-object p0
.end method

.method public b()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlutterActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " connection to the engine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->L()Lio/flutter/embedding/engine/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " evicted by another attaching activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterActivity"

    invoke-static {v1, v0}, Lx/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->v()V

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->w()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->reportFullyDrawn()V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lio/flutter/embedding/android/i;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->O()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lio/flutter/embedding/android/i;->a:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->T()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()Landroidx/lifecycle/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/i;->c:Landroidx/lifecycle/m;

    return-object v0
.end method

.method public g()V
    .locals 0

    .line 1
    return-void
.end method

.method public h()Landroid/content/Context;
    .locals 0

    .line 1
    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cached_engine_group_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "route"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->M()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "io.flutter.InitialRoute"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public k()Lio/flutter/embedding/engine/l;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/embedding/engine/l;->a(Landroid/content/Intent;)Lio/flutter/embedding/engine/l;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/flutter/embedding/android/i;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.RUN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "dart_entrypoint_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public n(Landroid/content/Context;)Lio/flutter/embedding/engine/a;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "onActivityResult"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/android/j;->r(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const-string v0, "onBackPressed"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->t()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lio/flutter/embedding/android/i;->S()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lio/flutter/embedding/android/j;

    invoke-direct {v0, p0}, Lio/flutter/embedding/android/j;-><init>(Lio/flutter/embedding/android/j$c;)V

    iput-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0, p0}, Lio/flutter/embedding/android/j;->s(Landroid/content/Context;)V

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/j;->B(Landroid/os/Bundle;)V

    iget-object p1, p0, Lio/flutter/embedding/android/i;->c:Landroidx/lifecycle/m;

    sget-object v0, Landroidx/lifecycle/h$a;->ON_CREATE:Landroidx/lifecycle/h$a;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/m;->g(Landroidx/lifecycle/h$a;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/i;->H()V

    invoke-direct {p0}, Lio/flutter/embedding/android/i;->I()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lio/flutter/embedding/android/i;->G()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->v()V

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->w()V

    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->P()V

    iget-object v0, p0, Lio/flutter/embedding/android/i;->c:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/h$a;->ON_DESTROY:Landroidx/lifecycle/h$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m;->g(Landroidx/lifecycle/h$a;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "onNewIntent"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/j;->x(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->y()V

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/i;->c:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/h$a;->ON_PAUSE:Landroidx/lifecycle/h$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m;->g(Landroidx/lifecycle/h$a;)V

    return-void
.end method

.method public onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    const-string v0, "onPostResume"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->z()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "onRequestPermissionsResult"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/android/j;->A(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lio/flutter/embedding/android/i;->c:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/h$a;->ON_RESUME:Landroidx/lifecycle/h$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m;->g(Landroidx/lifecycle/h$a;)V

    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->C()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "onSaveInstanceState"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/j;->D(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lio/flutter/embedding/android/i;->c:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/h$a;->ON_START:Landroidx/lifecycle/h$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m;->g(Landroidx/lifecycle/h$a;)V

    const-string v0, "onStart"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->E()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->F()V

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/i;->c:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/h$a;->ON_STOP:Landroidx/lifecycle/h$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m;->g(Landroidx/lifecycle/h$a;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const-string v0, "onTrimMemory"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/j;->G(I)V

    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    const-string v0, "onUserLeaveHint"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->H()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    const-string v0, "onWindowFocusChanged"

    invoke-direct {p0, v0}, Lio/flutter/embedding/android/i;->R(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/android/j;->I(Z)V

    :cond_0
    return-void
.end method

.method public p()Lio/flutter/embedding/android/p0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->K()Lio/flutter/embedding/android/k;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/k;->e:Lio/flutter/embedding/android/k;

    if-ne v0, v1, :cond_0

    sget-object v0, Lio/flutter/embedding/android/p0;->e:Lio/flutter/embedding/android/p0;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/flutter/embedding/android/p0;->f:Lio/flutter/embedding/android/p0;

    :goto_0
    return-object v0
.end method

.method public q()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "destroy_engine_with_activity"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->w()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v1}, Lio/flutter/embedding/android/j;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public s()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->M()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "flutter_deeplinking_enabled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method public t()Lio/flutter/embedding/android/q0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->K()Lio/flutter/embedding/android/k;

    move-result-object v0

    sget-object v1, Lio/flutter/embedding/android/k;->e:Lio/flutter/embedding/android/k;

    if-ne v0, v1, :cond_0

    sget-object v0, Lio/flutter/embedding/android/q0;->e:Lio/flutter/embedding/android/q0;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/flutter/embedding/android/q0;->f:Lio/flutter/embedding/android/q0;

    :goto_0
    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public v(Lio/flutter/embedding/android/t;)V
    .locals 0

    .line 1
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cached_engine_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(Lio/flutter/embedding/engine/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/i;->b:Lio/flutter/embedding/android/j;

    invoke-virtual {v0}, Lio/flutter/embedding/android/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Le0/a;->a(Lio/flutter/embedding/engine/a;)V

    return-void
.end method

.method public y()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enable_state_restoration"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "main"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dart_entrypoint"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/i;->M()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "io.flutter.Entrypoint"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    move-object v0, v1

    :catch_0
    :cond_2
    return-object v0
.end method
