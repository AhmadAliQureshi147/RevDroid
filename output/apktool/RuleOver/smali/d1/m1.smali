.class public abstract Ld1/m1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Li1/h0;

.field public static final b:Li1/h0;

.field private static final c:Li1/h0;

.field private static final d:Li1/h0;

.field private static final e:Li1/h0;

.field private static final f:Ld1/p0;

.field private static final g:Ld1/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li1/h0;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld1/m1;->a:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld1/m1;->b:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld1/m1;->c:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld1/m1;->d:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld1/m1;->e:Li1/h0;

    new-instance v0, Ld1/p0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld1/p0;-><init>(Z)V

    sput-object v0, Ld1/m1;->f:Ld1/p0;

    new-instance v0, Ld1/p0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ld1/p0;-><init>(Z)V

    sput-object v0, Ld1/m1;->g:Ld1/p0;

    return-void
.end method

.method public static final synthetic a()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Ld1/m1;->a:Li1/h0;

    return-object v0
.end method

.method public static final synthetic b()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Ld1/m1;->c:Li1/h0;

    return-object v0
.end method

.method public static final synthetic c()Ld1/p0;
    .locals 1

    .line 1
    sget-object v0, Ld1/m1;->g:Ld1/p0;

    return-object v0
.end method

.method public static final synthetic d()Ld1/p0;
    .locals 1

    .line 1
    sget-object v0, Ld1/m1;->f:Ld1/p0;

    return-object v0
.end method

.method public static final synthetic e()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Ld1/m1;->e:Li1/h0;

    return-object v0
.end method

.method public static final synthetic f()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Ld1/m1;->d:Li1/h0;

    return-object v0
.end method

.method public static final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Ld1/a1;

    if-eqz v0, :cond_0

    new-instance v0, Ld1/b1;

    check-cast p0, Ld1/a1;

    invoke-direct {v0, p0}, Ld1/b1;-><init>(Ld1/a1;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    instance-of v0, p0, Ld1/b1;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ld1/b1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Ld1/b1;->a:Ld1/a1;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method
