.class public Lb/c;
.super Lb/e;
.source "SourceFile"


# static fields
.field private static volatile c:Lb/c;

.field private static final d:Ljava/util/concurrent/Executor;

.field private static final e:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Lb/e;

.field private final b:Lb/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb/a;

    invoke-direct {v0}, Lb/a;-><init>()V

    sput-object v0, Lb/c;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Lb/b;

    invoke-direct {v0}, Lb/b;-><init>()V

    sput-object v0, Lb/c;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/e;-><init>()V

    new-instance v0, Lb/d;

    invoke-direct {v0}, Lb/d;-><init>()V

    iput-object v0, p0, Lb/c;->b:Lb/e;

    iput-object v0, p0, Lb/c;->a:Lb/e;

    return-void
.end method

.method public static synthetic d(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lb/c;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic e(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lb/c;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static f()Lb/c;
    .locals 2

    .line 1
    sget-object v0, Lb/c;->c:Lb/c;

    if-eqz v0, :cond_0

    sget-object v0, Lb/c;->c:Lb/c;

    return-object v0

    :cond_0
    const-class v0, Lb/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lb/c;->c:Lb/c;

    if-nez v1, :cond_1

    new-instance v1, Lb/c;

    invoke-direct {v1}, Lb/c;-><init>()V

    sput-object v1, Lb/c;->c:Lb/c;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lb/c;->c:Lb/c;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static synthetic g(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lb/c;->f()Lb/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/c;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic h(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lb/c;->f()Lb/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c;->a:Lb/e;

    invoke-virtual {v0, p1}, Lb/e;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c;->a:Lb/e;

    invoke-virtual {v0}, Lb/e;->b()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c;->a:Lb/e;

    invoke-virtual {v0, p1}, Lb/e;->c(Ljava/lang/Runnable;)V

    return-void
.end method
