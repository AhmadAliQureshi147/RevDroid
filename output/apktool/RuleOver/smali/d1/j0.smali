.class public abstract Ld1/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z

.field private static final b:Ld1/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li1/i0;->f(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ld1/j0;->a:Z

    invoke-static {}, Ld1/j0;->b()Ld1/k0;

    move-result-object v0

    sput-object v0, Ld1/j0;->b:Ld1/k0;

    return-void
.end method

.method public static final a()Ld1/k0;
    .locals 1

    .line 1
    sget-object v0, Ld1/j0;->b:Ld1/k0;

    return-object v0
.end method

.method private static final b()Ld1/k0;
    .locals 2

    .line 1
    sget-boolean v0, Ld1/j0;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Ld1/i0;->m:Ld1/i0;

    return-object v0

    :cond_0
    invoke-static {}, Ld1/n0;->c()Ld1/o1;

    move-result-object v0

    invoke-static {v0}, Li1/x;->c(Ld1/o1;)Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Ld1/k0;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Ld1/k0;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Ld1/i0;->m:Ld1/i0;

    :goto_1
    return-object v0
.end method
