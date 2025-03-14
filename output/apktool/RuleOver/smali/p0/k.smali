.class public abstract Lp0/k;
.super Lp0/d;
.source "SourceFile"

# interfaces
.implements Lw0/h;


# instance fields
.field private final h:I


# direct methods
.method public constructor <init>(ILn0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lp0/d;-><init>(Ln0/d;)V

    iput p1, p0, Lp0/k;->h:I

    return-void
.end method


# virtual methods
.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lp0/k;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp0/a;->c()Ln0/d;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lw0/r;->e(Lw0/h;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(this)"

    invoke-static {v0, v1}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lp0/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
