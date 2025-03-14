.class final Lg1/n;
.super Lh1/a;
.source "SourceFile"

# interfaces
.implements Lg1/j;
.implements Lg1/c;
.implements Lh1/h;


# static fields
.field private static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _state:Ljava/lang/Object;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Object;

    const-string v1, "_state"

    const-class v2, Lg1/n;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lg1/n;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lh1/a;-><init>()V

    iput-object p1, p0, Lg1/n;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final k(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    .line 1
    monitor-enter p0

    :try_start_0
    sget-object v0, Lg1/n;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {v1, p1}, Lw0/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-static {v1, p2}, Lw0/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-virtual {v0, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lg1/n;->d:I

    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_5

    add-int/2addr p1, v1

    iput p1, p0, Lg1/n;->d:I

    invoke-virtual {p0}, Lh1/a;->h()[Lh1/c;

    move-result-object p2

    sget-object v0, Ll0/q;->a:Ll0/q;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    :goto_0
    check-cast p2, [Lg1/p;

    if-eqz p2, :cond_3

    array-length v0, p2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_3

    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lg1/p;->g()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    monitor-enter p0

    :try_start_3
    iget p2, p0, Lg1/n;->d:I

    if-ne p2, p1, :cond_4

    add-int/2addr p1, v1

    iput p1, p0, Lg1/n;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lh1/a;->h()[Lh1/c;

    move-result-object p1

    sget-object v0, Ll0/q;->a:Ll0/q;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    move v5, p2

    move-object p2, p1

    move p1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_5
    add-int/lit8 p1, p1, 0x2

    :try_start_5
    iput p1, p0, Lg1/n;->d:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg1/n;->setValue(Ljava/lang/Object;)V

    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method

.method public b(Ln0/g;ILf1/a;)Lg1/c;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lg1/o;->d(Lg1/m;Ln0/g;ILf1/a;)Lg1/c;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg1/d;Ln0/d;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Lg1/n$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lg1/n$a;

    iget v1, v0, Lg1/n$a;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lg1/n$a;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lg1/n$a;

    invoke-direct {v0, p0, p2}, Lg1/n$a;-><init>(Lg1/n;Ln0/d;)V

    :goto_0
    iget-object p2, v0, Lg1/n$a;->m:Ljava/lang/Object;

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lg1/n$a;->o:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v2, :cond_4

    const/4 p1, 0x1

    if-eq v2, p1, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lg1/n$a;->l:Ljava/lang/Object;

    iget-object v2, v0, Lg1/n$a;->k:Ljava/lang/Object;

    check-cast v2, Ld1/e1;

    iget-object v6, v0, Lg1/n$a;->j:Ljava/lang/Object;

    check-cast v6, Lg1/p;

    iget-object v7, v0, Lg1/n$a;->i:Ljava/lang/Object;

    check-cast v7, Lg1/d;

    iget-object v8, v0, Lg1/n$a;->h:Ljava/lang/Object;

    check-cast v8, Lg1/n;

    :try_start_0
    invoke-static {p2}, Ll0/l;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lg1/n$a;->l:Ljava/lang/Object;

    iget-object v2, v0, Lg1/n$a;->k:Ljava/lang/Object;

    check-cast v2, Ld1/e1;

    iget-object v6, v0, Lg1/n$a;->j:Ljava/lang/Object;

    check-cast v6, Lg1/p;

    iget-object v7, v0, Lg1/n$a;->i:Ljava/lang/Object;

    check-cast v7, Lg1/d;

    iget-object v8, v0, Lg1/n$a;->h:Ljava/lang/Object;

    check-cast v8, Lg1/n;

    :try_start_1
    invoke-static {p2}, Ll0/l;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_3
    iget-object p1, v0, Lg1/n$a;->j:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lg1/p;

    iget-object p1, v0, Lg1/n$a;->i:Ljava/lang/Object;

    check-cast p1, Lg1/d;

    iget-object v2, v0, Lg1/n$a;->h:Ljava/lang/Object;

    move-object v8, v2

    check-cast v8, Lg1/n;

    :try_start_2
    invoke-static {p2}, Ll0/l;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_4
    invoke-static {p2}, Ll0/l;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lh1/a;->d()Lh1/c;

    move-result-object p2

    check-cast p2, Lg1/p;

    move-object v8, p0

    move-object v6, p2

    :goto_1
    :try_start_3
    invoke-interface {v0}, Ln0/d;->h()Ln0/g;

    move-result-object p2

    sget-object v2, Ld1/e1;->b:Ld1/e1$b;

    invoke-interface {p2, v2}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object p2

    check-cast p2, Ld1/e1;

    move-object v7, p1

    move-object v2, p2

    move-object p1, v3

    :cond_5
    :goto_2
    sget-object p2, Lg1/n;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p2, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_6

    invoke-static {v2}, Ld1/i1;->d(Ld1/e1;)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-static {p1, p2}, Lw0/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    :cond_7
    sget-object p1, Lh1/i;->a:Li1/h0;

    if-ne p2, p1, :cond_8

    move-object p1, v3

    goto :goto_3

    :cond_8
    move-object p1, p2

    :goto_3
    iput-object v8, v0, Lg1/n$a;->h:Ljava/lang/Object;

    iput-object v7, v0, Lg1/n$a;->i:Ljava/lang/Object;

    iput-object v6, v0, Lg1/n$a;->j:Ljava/lang/Object;

    iput-object v2, v0, Lg1/n$a;->k:Ljava/lang/Object;

    iput-object p2, v0, Lg1/n$a;->l:Ljava/lang/Object;

    iput v5, v0, Lg1/n$a;->o:I

    invoke-interface {v7, p1, v0}, Lg1/d;->a(Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object p1, p2

    :cond_a
    :goto_4
    invoke-virtual {v6}, Lg1/p;->h()Z

    move-result p2

    if-nez p2, :cond_5

    iput-object v8, v0, Lg1/n$a;->h:Ljava/lang/Object;

    iput-object v7, v0, Lg1/n$a;->i:Ljava/lang/Object;

    iput-object v6, v0, Lg1/n$a;->j:Ljava/lang/Object;

    iput-object v2, v0, Lg1/n$a;->k:Ljava/lang/Object;

    iput-object p1, v0, Lg1/n$a;->l:Ljava/lang/Object;

    iput v4, v0, Lg1/n$a;->o:I

    invoke-virtual {v6, v0}, Lg1/p;->e(Ln0/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_5

    return-object v1

    :goto_5
    invoke-virtual {v8, v6}, Lh1/a;->g(Lh1/c;)V

    throw p1
.end method

.method public bridge synthetic e()Lh1/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg1/n;->i()Lg1/p;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f(I)[Lh1/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg1/n;->j(I)[Lg1/p;

    move-result-object p1

    return-object p1
.end method

.method protected i()Lg1/p;
    .locals 1

    .line 1
    new-instance v0, Lg1/p;

    invoke-direct {v0}, Lg1/p;-><init>()V

    return-object v0
.end method

.method protected j(I)[Lg1/p;
    .locals 0

    .line 1
    new-array p1, p1, [Lg1/p;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    sget-object p1, Lh1/i;->a:Li1/h0;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lg1/n;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
