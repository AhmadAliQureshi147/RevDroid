.class public abstract Lw0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lw0/s;

.field private static final b:[La1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.reflect.jvm.internal.ReflectionFactoryImpl"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw0/s;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lw0/s;

    invoke-direct {v0}, Lw0/s;-><init>()V

    :goto_1
    sput-object v0, Lw0/r;->a:Lw0/s;

    const/4 v0, 0x0

    new-array v0, v0, [La1/b;

    sput-object v0, Lw0/r;->b:[La1/b;

    return-void
.end method

.method public static a(Lw0/i;)La1/e;
    .locals 1

    .line 1
    sget-object v0, Lw0/r;->a:Lw0/s;

    invoke-virtual {v0, p0}, Lw0/s;->a(Lw0/i;)La1/e;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)La1/b;
    .locals 1

    .line 1
    sget-object v0, Lw0/r;->a:Lw0/s;

    invoke-virtual {v0, p0}, Lw0/s;->b(Ljava/lang/Class;)La1/b;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;)La1/d;
    .locals 2

    .line 1
    sget-object v0, Lw0/r;->a:Lw0/s;

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lw0/s;->c(Ljava/lang/Class;Ljava/lang/String;)La1/d;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lw0/n;)La1/f;
    .locals 1

    .line 1
    sget-object v0, Lw0/r;->a:Lw0/s;

    invoke-virtual {v0, p0}, Lw0/s;->d(Lw0/n;)La1/f;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lw0/h;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lw0/r;->a:Lw0/s;

    invoke-virtual {v0, p0}, Lw0/s;->e(Lw0/h;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lw0/l;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lw0/r;->a:Lw0/s;

    invoke-virtual {v0, p0}, Lw0/s;->f(Lw0/l;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
