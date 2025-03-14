.class final Lh1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/d;
.implements Lp0/e;


# instance fields
.field private final e:Ln0/d;

.field private final f:Ln0/g;


# direct methods
.method public constructor <init>(Ln0/d;Ln0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/k;->e:Ln0/d;

    iput-object p2, p0, Lh1/k;->f:Ln0/g;

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lh1/k;->e:Ln0/d;

    invoke-interface {v0, p1}, Ln0/d;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public h()Ln0/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lh1/k;->f:Ln0/g;

    return-object v0
.end method

.method public t()Lp0/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/k;->e:Ln0/d;

    instance-of v1, v0, Lp0/e;

    if-eqz v1, :cond_0

    check-cast v0, Lp0/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
