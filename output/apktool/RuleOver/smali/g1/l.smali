.class public abstract Lg1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li1/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li1/h0;

    const-string v1, "NO_VALUE"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg1/l;->a:Li1/h0;

    return-void
.end method

.method public static final a(Lg1/k;Ln0/g;ILf1/a;)Lg1/c;
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    :cond_0
    sget-object v0, Lf1/a;->e:Lf1/a;

    if-ne p3, v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lh1/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lh1/g;-><init>(Lg1/c;Ln0/g;ILf1/a;)V

    return-object v0
.end method
