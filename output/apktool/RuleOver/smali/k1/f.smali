.class public abstract Lk1/f;
.super Ld1/w0;
.source "SourceFile"


# instance fields
.field private final h:I

.field private final i:I

.field private final j:J

.field private final k:Ljava/lang/String;

.field private l:Lk1/a;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld1/w0;-><init>()V

    iput p1, p0, Lk1/f;->h:I

    iput p2, p0, Lk1/f;->i:I

    iput-wide p3, p0, Lk1/f;->j:J

    iput-object p5, p0, Lk1/f;->k:Ljava/lang/String;

    invoke-direct {p0}, Lk1/f;->o()Lk1/a;

    move-result-object p1

    iput-object p1, p0, Lk1/f;->l:Lk1/a;

    return-void
.end method

.method private final o()Lk1/a;
    .locals 7

    .line 1
    new-instance v6, Lk1/a;

    iget v1, p0, Lk1/f;->h:I

    iget v2, p0, Lk1/f;->i:I

    iget-wide v3, p0, Lk1/f;->j:J

    iget-object v5, p0, Lk1/f;->k:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lk1/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public g(Ln0/g;Ljava/lang/Runnable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lk1/f;->l:Lk1/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lk1/a;->g(Lk1/a;Ljava/lang/Runnable;Lk1/i;ZILjava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/lang/Runnable;Lk1/i;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk1/f;->l:Lk1/a;

    invoke-virtual {v0, p1, p2, p3}, Lk1/a;->f(Ljava/lang/Runnable;Lk1/i;Z)V

    return-void
.end method
