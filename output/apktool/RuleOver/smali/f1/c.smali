.class public abstract Lf1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lf1/j;

.field public static final b:I

.field private static final c:I

.field public static final d:Li1/h0;

.field private static final e:Li1/h0;

.field private static final f:Li1/h0;

.field private static final g:Li1/h0;

.field private static final h:Li1/h0;

.field private static final i:Li1/h0;

.field private static final j:Li1/h0;

.field private static final k:Li1/h0;

.field private static final l:Li1/h0;

.field private static final m:Li1/h0;

.field private static final n:Li1/h0;

.field private static final o:Li1/h0;

.field private static final p:Li1/h0;

.field private static final q:Li1/h0;

.field private static final r:Li1/h0;

.field private static final s:Li1/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lf1/j;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lf1/j;-><init>(JLf1/j;Lf1/b;I)V

    sput-object v6, Lf1/c;->a:Lf1/j;

    const-string v7, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Li1/i0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lf1/c;->b:I

    const-string v1, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li1/i0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lf1/c;->c:I

    new-instance v0, Li1/h0;

    const-string v1, "BUFFERED"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->d:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->e:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->f:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->g:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "POISONED"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->h:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->i:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->j:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->k:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->l:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->m:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->n:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->o:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->p:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->q:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->r:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lf1/c;->s:Li1/h0;

    return-void
.end method

.method private static final A(I)J
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private static final B(Ld1/j;Ljava/lang/Object;Lv0/l;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Ld1/j;->A(Ljava/lang/Object;Ljava/lang/Object;Lv0/l;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ld1/j;->w(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic C(Ld1/j;Ljava/lang/Object;Lv0/l;ILjava/lang/Object;)Z
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lf1/c;->B(Ld1/j;Ljava/lang/Object;Lv0/l;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(JZ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lf1/c;->v(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic b(JI)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lf1/c;->w(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic c(JLf1/j;)Lf1/j;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lf1/c;->x(JLf1/j;)Lf1/j;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->q:Li1/h0;

    return-object v0
.end method

.method public static final synthetic e()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->r:Li1/h0;

    return-object v0
.end method

.method public static final synthetic f()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->i:Li1/h0;

    return-object v0
.end method

.method public static final synthetic g()I
    .locals 1

    .line 1
    sget v0, Lf1/c;->c:I

    return v0
.end method

.method public static final synthetic h()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->o:Li1/h0;

    return-object v0
.end method

.method public static final synthetic i()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->k:Li1/h0;

    return-object v0
.end method

.method public static final synthetic j()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->j:Li1/h0;

    return-object v0
.end method

.method public static final synthetic k()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->e:Li1/h0;

    return-object v0
.end method

.method public static final synthetic l()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->s:Li1/h0;

    return-object v0
.end method

.method public static final synthetic m()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->p:Li1/h0;

    return-object v0
.end method

.method public static final synthetic n()Lf1/j;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->a:Lf1/j;

    return-object v0
.end method

.method public static final synthetic o()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->h:Li1/h0;

    return-object v0
.end method

.method public static final synthetic p()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->g:Li1/h0;

    return-object v0
.end method

.method public static final synthetic q()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->f:Li1/h0;

    return-object v0
.end method

.method public static final synthetic r()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->m:Li1/h0;

    return-object v0
.end method

.method public static final synthetic s()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->n:Li1/h0;

    return-object v0
.end method

.method public static final synthetic t(I)J
    .locals 2

    .line 1
    invoke-static {p0}, Lf1/c;->A(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic u(Ld1/j;Ljava/lang/Object;Lv0/l;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lf1/c;->B(Ld1/j;Ljava/lang/Object;Lv0/l;)Z

    move-result p0

    return p0
.end method

.method private static final v(JZ)J
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static final w(JI)J
    .locals 2

    .line 1
    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static final x(JLf1/j;)Lf1/j;
    .locals 7

    .line 1
    new-instance v6, Lf1/j;

    invoke-virtual {p2}, Lf1/j;->u()Lf1/b;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lf1/j;-><init>(JLf1/j;Lf1/b;I)V

    return-object v6
.end method

.method public static final y()La1/e;
    .locals 1

    .line 1
    sget-object v0, Lf1/c$a;->n:Lf1/c$a;

    return-object v0
.end method

.method public static final z()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lf1/c;->l:Li1/h0;

    return-object v0
.end method
