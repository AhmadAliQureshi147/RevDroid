.class public abstract Lf1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf1/h$a;,
        Lf1/h$b;,
        Lf1/h$c;
    }
.end annotation


# static fields
.field public static final a:Lf1/h$b;

.field private static final b:Lf1/h$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lf1/h$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf1/h$b;-><init>(Lw0/g;)V

    sput-object v0, Lf1/h;->a:Lf1/h$b;

    new-instance v0, Lf1/h$c;

    invoke-direct {v0}, Lf1/h$c;-><init>()V

    sput-object v0, Lf1/h;->b:Lf1/h$c;

    return-void
.end method

.method public static final synthetic a()Lf1/h$c;
    .locals 1

    .line 1
    sget-object v0, Lf1/h;->b:Lf1/h$c;

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static final c(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    instance-of v0, p0, Lf1/h$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lf1/h$a;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object v1, p0, Lf1/h$a;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method public static final d(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lf1/h$a;

    return p0
.end method

.method public static final e(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lf1/h$c;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
