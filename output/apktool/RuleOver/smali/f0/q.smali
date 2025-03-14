.class public Lf0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/q$g;,
        Lf0/q$f;,
        Lf0/q$b;,
        Lf0/q$c;,
        Lf0/q$e;,
        Lf0/q$d;
    }
.end annotation


# instance fields
.field private final a:Lg0/i;

.field private b:Lf0/q$g;

.field private final c:Lg0/i$c;


# direct methods
.method public constructor <init>(Ly/a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf0/q$a;

    invoke-direct {v0, p0}, Lf0/q$a;-><init>(Lf0/q;)V

    iput-object v0, p0, Lf0/q;->c:Lg0/i$c;

    new-instance v1, Lg0/i;

    const-string v2, "flutter/platform_views"

    sget-object v3, Lg0/n;->b:Lg0/n;

    invoke-direct {v1, p1, v2, v3}, Lg0/i;-><init>(Lg0/b;Ljava/lang/String;Lg0/j;)V

    iput-object v1, p0, Lf0/q;->a:Lg0/i;

    invoke-virtual {v1, v0}, Lg0/i;->e(Lg0/i$c;)V

    return-void
.end method

.method static synthetic a(Lf0/q;)Lf0/q$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lf0/q;->b:Lf0/q$g;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lf0/q;->c(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lx/b;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public d(Lf0/q$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/q;->b:Lf0/q$g;

    return-void
.end method
