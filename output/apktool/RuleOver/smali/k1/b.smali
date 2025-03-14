.class public final Lk1/b;
.super Ld1/w0;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final h:Lk1/b;

.field private static final i:Ld1/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lk1/b;

    invoke-direct {v0}, Lk1/b;-><init>()V

    sput-object v0, Lk1/b;->h:Lk1/b;

    sget-object v0, Lk1/m;->g:Lk1/m;

    const-string v1, "kotlinx.coroutines.io.parallelism"

    const/16 v2, 0x40

    invoke-static {}, Li1/i0;->a()I

    move-result v3

    invoke-static {v2, v3}, Lz0/d;->a(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li1/i0;->g(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/m;->n(I)Ld1/a0;

    move-result-object v0

    sput-object v0, Lk1/b;->i:Ld1/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld1/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be invoked on Dispatchers.IO"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Ln0/h;->e:Ln0/h;

    invoke-virtual {p0, v0, p1}, Lk1/b;->g(Ln0/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(Ln0/g;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lk1/b;->i:Ld1/a0;

    invoke-virtual {v0, p1, p2}, Ld1/a0;->g(Ln0/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
