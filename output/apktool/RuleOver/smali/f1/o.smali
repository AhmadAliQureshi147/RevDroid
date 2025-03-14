.class public Lf1/o;
.super Lf1/b;
.source "SourceFile"


# instance fields
.field private final q:I

.field private final r:Lf1/a;


# direct methods
.method public constructor <init>(ILf1/a;Lv0/l;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p3}, Lf1/b;-><init>(ILv0/l;)V

    iput p1, p0, Lf1/o;->q:I

    iput-object p2, p0, Lf1/o;->r:Lf1/a;

    sget-object p3, Lf1/a;->e:Lf1/a;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    if-lt p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Buffered channel capacity must be at least 1, but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This implementation does not support suspension for senders, use "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p2, Lf1/b;

    invoke-static {p2}, Lw0/r;->b(Ljava/lang/Class;)La1/b;

    move-result-object p2

    invoke-interface {p2}, La1/b;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " instead"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic B0(Lf1/o;Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lf1/o;->E0(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Lf1/h$a;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lf1/h;->c(Ljava/lang/Object;)Ljava/lang/Throwable;

    iget-object p2, p0, Lf1/b;->f:Lv0/l;

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Li1/z;->d(Lv0/l;Ljava/lang/Object;Li1/q0;ILjava/lang/Object;)Li1/q0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf1/b;->K()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p1, p0}, Ll0/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-virtual {p0}, Lf1/b;->K()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1
    sget-object p0, Ll0/q;->a:Ll0/q;

    return-object p0
.end method

.method private final C0(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lf1/b;->y(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lf1/h;->e(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lf1/h;->d(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p2, p0, Lf1/b;->f:Lv0/l;

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0, v1}, Li1/z;->d(Lv0/l;Ljava/lang/Object;Li1/q0;ILjava/lang/Object;)Li1/q0;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    throw p1

    :cond_2
    :goto_0
    sget-object p1, Lf1/h;->a:Lf1/h$b;

    sget-object p2, Ll0/q;->a:Ll0/q;

    invoke-virtual {p1, p2}, Lf1/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method private final D0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v8, p0

    sget-object v9, Lf1/c;->d:Li1/h0;

    invoke-static {}, Lf1/b;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/j;

    :cond_0
    :goto_0
    invoke-static {}, Lf1/b;->h()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    const-wide v3, 0xfffffffffffffffL

    and-long v10, v1, v3

    invoke-static {v8, v1, v2}, Lf1/b;->i(Lf1/b;J)Z

    move-result v12

    sget v13, Lf1/c;->b:I

    int-to-long v1, v13

    div-long v1, v10, v1

    int-to-long v3, v13

    rem-long v3, v10, v3

    long-to-int v14, v3

    iget-wide v3, v0, Li1/e0;->g:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    invoke-static {v8, v1, v2, v0}, Lf1/b;->c(Lf1/b;JLf1/j;)Lf1/j;

    move-result-object v1

    if-nez v1, :cond_1

    if-eqz v12, :cond_0

    sget-object v0, Lf1/h;->a:Lf1/h$b;

    invoke-virtual/range {p0 .. p0}, Lf1/b;->K()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf1/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v15, v1

    goto :goto_1

    :cond_2
    move-object v15, v0

    :goto_1
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v14

    move-object/from16 v3, p1

    move-wide v4, v10

    move-object v6, v9

    move v7, v12

    invoke-static/range {v0 .. v7}, Lf1/b;->p(Lf1/b;Lf1/j;ILjava/lang/Object;JLjava/lang/Object;Z)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v15}, Li1/e;->b()V

    :goto_2
    move-object v0, v15

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lf1/b;->J()J

    move-result-wide v0

    cmp-long v2, v10, v0

    if-gez v2, :cond_5

    invoke-virtual {v15}, Li1/e;->b()V

    :cond_5
    sget-object v0, Lf1/h;->a:Lf1/h$b;

    invoke-virtual/range {p0 .. p0}, Lf1/b;->K()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf1/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v15}, Li1/e0;->p()V

    sget-object v0, Lf1/h;->a:Lf1/h$b;

    invoke-virtual/range {p0 .. p0}, Lf1/b;->K()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf1/h$b;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_8
    instance-of v0, v9, Ld1/z1;

    if-eqz v0, :cond_9

    check-cast v9, Ld1/z1;

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    :goto_3
    if-eqz v9, :cond_a

    invoke-static {v8, v9, v15, v14}, Lf1/b;->l(Lf1/b;Ld1/z1;Lf1/j;I)V

    :cond_a
    iget-wide v0, v15, Li1/e0;->g:J

    int-to-long v2, v13

    mul-long v0, v0, v2

    int-to-long v2, v14

    add-long/2addr v0, v2

    invoke-virtual {v8, v0, v1}, Lf1/b;->B(J)V

    sget-object v0, Lf1/h;->a:Lf1/h$b;

    sget-object v1, Ll0/q;->a:Ll0/q;

    invoke-virtual {v0, v1}, Lf1/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Lf1/h;->a:Lf1/h$b;

    sget-object v1, Ll0/q;->a:Ll0/q;

    invoke-virtual {v0, v1}, Lf1/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-virtual {v15}, Li1/e;->b()V

    sget-object v0, Lf1/h;->a:Lf1/h$b;

    sget-object v1, Ll0/q;->a:Ll0/q;

    invoke-virtual {v0, v1}, Lf1/h$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final E0(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/o;->r:Lf1/a;

    sget-object v1, Lf1/a;->g:Lf1/a;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lf1/o;->C0(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lf1/o;->D0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method protected V()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/o;->r:Lf1/a;

    sget-object v1, Lf1/a;->f:Lf1/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lf1/o;->B0(Lf1/o;Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lf1/o;->E0(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
