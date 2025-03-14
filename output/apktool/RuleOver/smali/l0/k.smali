.class public abstract Ll0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll0/k$a;,
        Ll0/k$b;
    }
.end annotation


# static fields
.field public static final e:Ll0/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ll0/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll0/k$a;-><init>(Lw0/g;)V

    sput-object v0, Ll0/k;->e:Ll0/k$a;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    .line 1
    instance-of v0, p0, Ll0/k$b;

    if-eqz v0, :cond_0

    check-cast p0, Ll0/k$b;

    iget-object p0, p0, Ll0/k$b;->e:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final c(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Ll0/k$b;

    return p0
.end method

.method public static final d(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Ll0/k$b;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
