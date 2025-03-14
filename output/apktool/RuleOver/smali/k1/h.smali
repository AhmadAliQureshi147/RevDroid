.class public abstract Lk1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public e:J

.field public f:Lk1/i;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    sget-object v2, Lk1/l;->g:Lk1/i;

    invoke-direct {p0, v0, v1, v2}, Lk1/h;-><init>(JLk1/i;)V

    return-void
.end method

.method public constructor <init>(JLk1/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lk1/h;->e:J

    iput-object p3, p0, Lk1/h;->f:Lk1/i;

    return-void
.end method
