.class public abstract Ld1/k1;
.super Ld1/w;
.source "SourceFile"

# interfaces
.implements Ld1/o0;
.implements Ld1/a1;


# instance fields
.field public h:Ld1/l1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld1/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld1/k1;->x()Ld1/l1;

    move-result-object v0

    invoke-virtual {v0, p0}, Ld1/l1;->t0(Ld1/k1;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public d()Ld1/p1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ld1/h0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ld1/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[job@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ld1/k1;->x()Ld1/l1;

    move-result-object v1

    invoke-static {v1}, Ld1/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Ld1/l1;
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/k1;->h:Ld1/l1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "job"

    invoke-static {v0}, Lw0/k;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final y(Ld1/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld1/k1;->h:Ld1/l1;

    return-void
.end method
