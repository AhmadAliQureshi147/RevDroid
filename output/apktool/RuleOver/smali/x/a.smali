.class public final Lx/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx/a$b;
    }
.end annotation


# static fields
.field private static d:Lx/a;

.field private static e:Z


# instance fields
.field private a:La0/d;

.field private b:Lio/flutter/embedding/engine/FlutterJNI$c;

.field private c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(La0/d;Lz/a;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/a;->a:La0/d;

    iput-object p3, p0, Lx/a;->b:Lio/flutter/embedding/engine/FlutterJNI$c;

    iput-object p4, p0, Lx/a;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(La0/d;Lz/a;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;Lx/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lx/a;-><init>(La0/d;Lz/a;Lio/flutter/embedding/engine/FlutterJNI$c;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static e()Lx/a;
    .locals 1

    .line 1
    const/4 v0, 0x1

    sput-boolean v0, Lx/a;->e:Z

    sget-object v0, Lx/a;->d:Lx/a;

    if-nez v0, :cond_0

    new-instance v0, Lx/a$b;

    invoke-direct {v0}, Lx/a$b;-><init>()V

    invoke-virtual {v0}, Lx/a$b;->a()Lx/a;

    move-result-object v0

    sput-object v0, Lx/a;->d:Lx/a;

    :cond_0
    sget-object v0, Lx/a;->d:Lx/a;

    return-object v0
.end method


# virtual methods
.method public a()Lz/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lx/a;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public c()La0/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lx/a;->a:La0/d;

    return-object v0
.end method

.method public d()Lio/flutter/embedding/engine/FlutterJNI$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lx/a;->b:Lio/flutter/embedding/engine/FlutterJNI$c;

    return-object v0
.end method
