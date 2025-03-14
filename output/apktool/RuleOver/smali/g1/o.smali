.class public abstract Lg1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Li1/h0;

.field private static final b:Li1/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li1/h0;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg1/o;->a:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "PENDING"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg1/o;->b:Li1/h0;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lg1/j;
    .locals 1

    .line 1
    new-instance v0, Lg1/n;

    if-nez p0, :cond_0

    sget-object p0, Lh1/i;->a:Li1/h0;

    :cond_0
    invoke-direct {v0, p0}, Lg1/n;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final synthetic b()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lg1/o;->a:Li1/h0;

    return-object v0
.end method

.method public static final synthetic c()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Lg1/o;->b:Li1/h0;

    return-object v0
.end method

.method public static final d(Lg1/m;Ln0/g;ILf1/a;)Lg1/c;
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-ltz p2, :cond_0

    const/4 v1, 0x2

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    :cond_1
    sget-object v0, Lf1/a;->f:Lf1/a;

    if-ne p3, v0, :cond_2

    return-object p0

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lg1/l;->a(Lg1/k;Ln0/g;ILf1/a;)Lg1/c;

    move-result-object p0

    return-object p0
.end method
