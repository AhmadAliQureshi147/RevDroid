.class public final Li1/o;
.super Ld1/a0;
.source "SourceFile"

# interfaces
.implements Ld1/k0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/o$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final g:Ld1/a0;

.field private final h:I

.field private final synthetic i:Ld1/k0;

.field private final j:Li1/t;

.field private final k:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Li1/o;

    const-string v1, "runningWorkers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Li1/o;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ld1/a0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld1/a0;-><init>()V

    iput-object p1, p0, Li1/o;->g:Ld1/a0;

    iput p2, p0, Li1/o;->h:I

    instance-of p2, p1, Ld1/k0;

    if-eqz p2, :cond_0

    check-cast p1, Ld1/k0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Ld1/j0;->a()Ld1/k0;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Li1/o;->i:Ld1/k0;

    new-instance p1, Li1/t;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Li1/t;-><init>(Z)V

    iput-object p1, p0, Li1/o;->j:Li1/t;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/o;->k:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic o(Li1/o;)Ld1/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Li1/o;->g:Ld1/a0;

    return-object p0
.end method

.method public static final synthetic r(Li1/o;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    invoke-direct {p0}, Li1/o;->t()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private final t()Ljava/lang/Runnable;
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Li1/o;->j:Li1/t;

    invoke-virtual {v0}, Li1/t;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Li1/o;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Li1/o;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, Li1/o;->j:Li1/t;

    invoke-virtual {v2}, Li1/t;->c()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    return-object v0
.end method

.method private final w()Z
    .locals 4

    .line 1
    iget-object v0, p0, Li1/o;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Li1/o;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Li1/o;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public g(Ln0/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Li1/o;->j:Li1/t;

    invoke-virtual {p1, p2}, Li1/t;->a(Ljava/lang/Object;)Z

    sget-object p1, Li1/o;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Li1/o;->h:I

    if-ge p1, p2, :cond_1

    invoke-direct {p0}, Li1/o;->w()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Li1/o;->t()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Li1/o$a;

    invoke-direct {p2, p0, p1}, Li1/o$a;-><init>(Li1/o;Ljava/lang/Runnable;)V

    iget-object p1, p0, Li1/o;->g:Ld1/a0;

    invoke-virtual {p1, p0, p2}, Ld1/a0;->g(Ln0/g;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
