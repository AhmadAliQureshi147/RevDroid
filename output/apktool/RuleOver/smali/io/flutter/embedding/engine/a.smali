.class public Lio/flutter/embedding/engine/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/a$b;
    }
.end annotation


# instance fields
.field private final a:Lio/flutter/embedding/engine/FlutterJNI;

.field private final b:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private final c:Ly/a;

.field private final d:Lio/flutter/embedding/engine/c;

.field private final e:Lh0/g;

.field private final f:Lf0/a;

.field private final g:Lf0/g;

.field private final h:Lf0/k;

.field private final i:Lf0/l;

.field private final j:Lf0/m;

.field private final k:Lf0/n;

.field private final l:Lf0/f;

.field private final m:Lf0/s;

.field private final n:Lf0/o;

.field private final o:Lf0/r;

.field private final p:Lf0/t;

.field private final q:Lf0/u;

.field private final r:Lf0/v;

.field private final s:Lf0/w;

.field private final t:Lio/flutter/plugin/platform/r;

.field private final u:Ljava/util/Set;

.field private final v:Lio/flutter/embedding/engine/a$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;La0/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/r;[Ljava/lang/String;ZZ)V
    .locals 9

    .line 1
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;La0/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/r;[Ljava/lang/String;ZZLio/flutter/embedding/engine/d;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;La0/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/r;[Ljava/lang/String;ZZLio/flutter/embedding/engine/d;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->u:Ljava/util/Set;

    new-instance v0, Lio/flutter/embedding/engine/a$a;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/a$a;-><init>(Lio/flutter/embedding/engine/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->v:Lio/flutter/embedding/engine/a$b;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    invoke-static {}, Lx/a;->e()Lx/a;

    move-result-object v1

    if-nez p3, :cond_0

    invoke-virtual {v1}, Lx/a;->d()Lio/flutter/embedding/engine/FlutterJNI$c;

    move-result-object p3

    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI$c;->a()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    new-instance v2, Ly/a;

    invoke-direct {v2, p3, v0}, Ly/a;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V

    iput-object v2, p0, Lio/flutter/embedding/engine/a;->c:Ly/a;

    invoke-virtual {v2}, Ly/a;->h()V

    invoke-static {}, Lx/a;->e()Lx/a;

    move-result-object v0

    invoke-virtual {v0}, Lx/a;->a()Lz/a;

    new-instance v0, Lf0/a;

    invoke-direct {v0, v2, p3}, Lf0/a;-><init>(Ly/a;Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->f:Lf0/a;

    new-instance v0, Lf0/g;

    invoke-direct {v0, v2}, Lf0/g;-><init>(Ly/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->g:Lf0/g;

    new-instance v0, Lf0/k;

    invoke-direct {v0, v2}, Lf0/k;-><init>(Ly/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->h:Lf0/k;

    new-instance v0, Lf0/l;

    invoke-direct {v0, v2}, Lf0/l;-><init>(Ly/a;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/a;->i:Lf0/l;

    new-instance v3, Lf0/m;

    invoke-direct {v3, v2}, Lf0/m;-><init>(Ly/a;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->j:Lf0/m;

    new-instance v3, Lf0/n;

    invoke-direct {v3, v2}, Lf0/n;-><init>(Ly/a;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->k:Lf0/n;

    new-instance v3, Lf0/f;

    invoke-direct {v3, v2}, Lf0/f;-><init>(Ly/a;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->l:Lf0/f;

    new-instance v3, Lf0/o;

    invoke-direct {v3, v2}, Lf0/o;-><init>(Ly/a;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->n:Lf0/o;

    new-instance v3, Lf0/r;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lf0/r;-><init>(Ly/a;Landroid/content/pm/PackageManager;)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->o:Lf0/r;

    new-instance v3, Lf0/s;

    invoke-direct {v3, v2, p7}, Lf0/s;-><init>(Ly/a;Z)V

    iput-object v3, p0, Lio/flutter/embedding/engine/a;->m:Lf0/s;

    new-instance p7, Lf0/t;

    invoke-direct {p7, v2}, Lf0/t;-><init>(Ly/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->p:Lf0/t;

    new-instance p7, Lf0/u;

    invoke-direct {p7, v2}, Lf0/u;-><init>(Ly/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->q:Lf0/u;

    new-instance p7, Lf0/v;

    invoke-direct {p7, v2}, Lf0/v;-><init>(Ly/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->r:Lf0/v;

    new-instance p7, Lf0/w;

    invoke-direct {p7, v2}, Lf0/w;-><init>(Ly/a;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->s:Lf0/w;

    new-instance p7, Lh0/g;

    invoke-direct {p7, p1, v0}, Lh0/g;-><init>(Landroid/content/Context;Lf0/l;)V

    iput-object p7, p0, Lio/flutter/embedding/engine/a;->e:Lh0/g;

    if-nez p2, :cond_1

    invoke-virtual {v1}, Lx/a;->c()La0/d;

    move-result-object p2

    :cond_1
    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, La0/d;->k(Landroid/content/Context;)V

    invoke-virtual {p2, p1, p5}, La0/d;->f(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_2
    iget-object p5, p0, Lio/flutter/embedding/engine/a;->v:Lio/flutter/embedding/engine/a$b;

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->addEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V

    invoke-virtual {p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformViewsController(Lio/flutter/plugin/platform/r;)V

    invoke-virtual {p3, p7}, Lio/flutter/embedding/engine/FlutterJNI;->setLocalizationPlugin(Lh0/g;)V

    invoke-virtual {v1}, Lx/a;->a()Lz/a;

    const/4 p5, 0x0

    invoke-virtual {p3, p5}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(Lz/a;)V

    invoke-virtual {p3}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result p5

    if-nez p5, :cond_3

    invoke-direct {p0}, Lio/flutter/embedding/engine/a;->f()V

    :cond_3
    new-instance p5, Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-direct {p5, p3}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object p5, p0, Lio/flutter/embedding/engine/a;->b:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iput-object p4, p0, Lio/flutter/embedding/engine/a;->t:Lio/flutter/plugin/platform/r;

    invoke-virtual {p4}, Lio/flutter/plugin/platform/r;->R()V

    new-instance p3, Lio/flutter/embedding/engine/c;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4, p0, p2, p8}, Lio/flutter/embedding/engine/c;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/a;La0/d;Lio/flutter/embedding/engine/d;)V

    iput-object p3, p0, Lio/flutter/embedding/engine/a;->d:Lio/flutter/embedding/engine/c;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    invoke-virtual {p7, p4}, Lh0/g;->d(Landroid/content/res/Configuration;)V

    if-eqz p6, :cond_4

    invoke-virtual {p2}, La0/d;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p0}, Le0/a;->a(Lio/flutter/embedding/engine/a;)V

    :cond_4
    invoke-static {p1, p0}, Lk0/g;->a(Landroid/content/Context;Lk0/g$a;)V

    new-instance p1, Lj0/a;

    invoke-virtual {p0}, Lio/flutter/embedding/engine/a;->s()Lf0/r;

    move-result-object p2

    invoke-direct {p1, p2}, Lj0/a;-><init>(Lf0/r;)V

    invoke-virtual {p3, p1}, Lio/flutter/embedding/engine/c;->g(Lc0/a;)V

    return-void
.end method

.method static synthetic b(Lio/flutter/embedding/engine/a;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/a;->u:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic c(Lio/flutter/embedding/engine/a;)Lio/flutter/plugin/platform/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/a;->t:Lio/flutter/plugin/platform/r;

    return-object p0
.end method

.method static synthetic d(Lio/flutter/embedding/engine/a;)Lf0/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/flutter/embedding/engine/a;->m:Lf0/s;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 1
    const-string v0, "FlutterEngine"

    const-string v1, "Attaching to JNI."

    invoke-static {v0, v1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->attachToNative()V

    invoke-direct {p0}, Lio/flutter/embedding/engine/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "FlutterEngine failed to attach to its native Object reference."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    return v0
.end method


# virtual methods
.method A(Landroid/content/Context;Ly/a$b;Ljava/lang/String;Ljava/util/List;Lio/flutter/plugin/platform/r;ZZ)Lio/flutter/embedding/engine/a;
    .locals 12

    .line 1
    move-object v0, p2

    invoke-direct {p0}, Lio/flutter/embedding/engine/a;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    iget-object v2, v1, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v3, v0, Ly/a$b;->c:Ljava/lang/String;

    iget-object v0, v0, Ly/a$b;->b:Ljava/lang/String;

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-virtual {v2, v3, v0, p3, v5}, Lio/flutter/embedding/engine/FlutterJNI;->spawn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v7

    new-instance v0, Lio/flutter/embedding/engine/a;

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p1

    move-object/from16 v8, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Lio/flutter/embedding/engine/a;-><init>(Landroid/content/Context;La0/d;Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/plugin/platform/r;[Ljava/lang/String;ZZ)V

    return-object v0

    :cond_0
    move-object v1, p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Spawn can only be called on a fully constructed FlutterEngine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->updateDisplayMetrics(IFFF)V

    return-void
.end method

.method public e(Lio/flutter/embedding/engine/a$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    const-string v0, "FlutterEngine"

    const-string v1, "Destroying."

    invoke-static {v0, v1}, Lx/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->u:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/a$b;

    invoke-interface {v1}, Lio/flutter/embedding/engine/a$b;->b()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:Lio/flutter/embedding/engine/c;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/c;->l()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->t:Lio/flutter/plugin/platform/r;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/r;->T()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:Ly/a;

    invoke-virtual {v0}, Ly/a;->i()V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/embedding/engine/a;->v:Lio/flutter/embedding/engine/a$b;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->removeEngineLifecycleListener(Lio/flutter/embedding/engine/a$b;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setDeferredComponentManager(Lz/a;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/a;->a:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->detachFromNativeAndReleaseResources()V

    invoke-static {}, Lx/a;->e()Lx/a;

    move-result-object v0

    invoke-virtual {v0}, Lx/a;->a()Lz/a;

    return-void
.end method

.method public h()Lf0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->f:Lf0/a;

    return-object v0
.end method

.method public i()Ld0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:Lio/flutter/embedding/engine/c;

    return-object v0
.end method

.method public j()Lf0/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->l:Lf0/f;

    return-object v0
.end method

.method public k()Ly/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->c:Ly/a;

    return-object v0
.end method

.method public l()Lf0/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->h:Lf0/k;

    return-object v0
.end method

.method public m()Lh0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->e:Lh0/g;

    return-object v0
.end method

.method public n()Lf0/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->j:Lf0/m;

    return-object v0
.end method

.method public o()Lf0/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->k:Lf0/n;

    return-object v0
.end method

.method public p()Lf0/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->n:Lf0/o;

    return-object v0
.end method

.method public q()Lio/flutter/plugin/platform/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->t:Lio/flutter/plugin/platform/r;

    return-object v0
.end method

.method public r()Lc0/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->d:Lio/flutter/embedding/engine/c;

    return-object v0
.end method

.method public s()Lf0/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->o:Lf0/r;

    return-object v0
.end method

.method public t()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->b:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object v0
.end method

.method public u()Lf0/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->m:Lf0/s;

    return-object v0
.end method

.method public v()Lf0/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->p:Lf0/t;

    return-object v0
.end method

.method public w()Lf0/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->q:Lf0/u;

    return-object v0
.end method

.method public x()Lf0/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->r:Lf0/v;

    return-object v0
.end method

.method public y()Lf0/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/engine/a;->s:Lf0/w;

    return-object v0
.end method
