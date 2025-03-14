.class public final Landroidx/lifecycle/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/s$a;,
        Landroidx/lifecycle/s$b;
    }
.end annotation


# static fields
.field public static final i:Landroidx/lifecycle/s$b;

.field private static final j:Landroidx/lifecycle/s;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z

.field private e:Landroid/os/Handler;

.field private final f:Landroidx/lifecycle/m;

.field private final g:Ljava/lang/Runnable;

.field private final h:Landroidx/lifecycle/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/s$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/s$b;-><init>(Lw0/g;)V

    sput-object v0, Landroidx/lifecycle/s;->i:Landroidx/lifecycle/s$b;

    new-instance v0, Landroidx/lifecycle/s;

    invoke-direct {v0}, Landroidx/lifecycle/s;-><init>()V

    sput-object v0, Landroidx/lifecycle/s;->j:Landroidx/lifecycle/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/s;->c:Z

    iput-boolean v0, p0, Landroidx/lifecycle/s;->d:Z

    new-instance v0, Landroidx/lifecycle/m;

    invoke-direct {v0, p0}, Landroidx/lifecycle/m;-><init>(Landroidx/lifecycle/l;)V

    iput-object v0, p0, Landroidx/lifecycle/s;->f:Landroidx/lifecycle/m;

    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0, p0}, Landroidx/lifecycle/r;-><init>(Landroidx/lifecycle/s;)V

    iput-object v0, p0, Landroidx/lifecycle/s;->g:Ljava/lang/Runnable;

    new-instance v0, Landroidx/lifecycle/s$d;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s$d;-><init>(Landroidx/lifecycle/s;)V

    iput-object v0, p0, Landroidx/lifecycle/s;->h:Landroidx/lifecycle/u$a;

    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/s;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/s;->j(Landroidx/lifecycle/s;)V

    return-void
.end method

.method public static final synthetic b(Landroidx/lifecycle/s;)Landroidx/lifecycle/u$a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/lifecycle/s;->h:Landroidx/lifecycle/u$a;

    return-object p0
.end method

.method public static final synthetic c()Landroidx/lifecycle/s;
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/s;->j:Landroidx/lifecycle/s;

    return-object v0
.end method

.method private static final j(Landroidx/lifecycle/s;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/lifecycle/s;->k()V

    invoke-virtual {p0}, Landroidx/lifecycle/s;->l()V

    return-void
.end method

.method public static final m()Landroidx/lifecycle/l;
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/s;->i:Landroidx/lifecycle/s$b;

    invoke-virtual {v0}, Landroidx/lifecycle/s$b;->a()Landroidx/lifecycle/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/lifecycle/s;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/s;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/s;->e:Landroid/os/Handler;

    invoke-static {v0}, Lw0/k;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/lifecycle/s;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/s;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/s;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/s;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/s;->f:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/h$a;->ON_RESUME:Landroidx/lifecycle/h$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m;->g(Landroidx/lifecycle/h$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/s;->c:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/s;->e:Landroid/os/Handler;

    invoke-static {v0}, Lw0/k;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/lifecycle/s;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()Landroidx/lifecycle/h;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/s;->f:Landroidx/lifecycle/m;

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/s;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/s;->a:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/s;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/s;->f:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/h$a;->ON_START:Landroidx/lifecycle/h$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m;->g(Landroidx/lifecycle/h$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/s;->d:Z

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/lifecycle/s;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/s;->a:I

    invoke-virtual {p0}, Landroidx/lifecycle/s;->l()V

    return-void
.end method

.method public final i(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/s;->e:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/lifecycle/s;->f:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/h$a;->ON_CREATE:Landroidx/lifecycle/h$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m;->g(Landroidx/lifecycle/h$a;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    new-instance v0, Landroidx/lifecycle/s$c;

    invoke-direct {v0, p0}, Landroidx/lifecycle/s$c;-><init>(Landroidx/lifecycle/s;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/s;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/s;->c:Z

    iget-object v0, p0, Landroidx/lifecycle/s;->f:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/h$a;->ON_PAUSE:Landroidx/lifecycle/h$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m;->g(Landroidx/lifecycle/h$a;)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/lifecycle/s;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/s;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/s;->f:Landroidx/lifecycle/m;

    sget-object v1, Landroidx/lifecycle/h$a;->ON_STOP:Landroidx/lifecycle/h$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/m;->g(Landroidx/lifecycle/h$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/s;->d:Z

    :cond_0
    return-void
.end method
