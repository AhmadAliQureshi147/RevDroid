.class public Lf0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field private b:[B

.field private c:Lg0/i;

.field private d:Lg0/i$d;

.field private e:Z

.field private f:Z

.field private final g:Lg0/i$c;


# direct methods
.method constructor <init>(Lg0/i;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lf0/s;->e:Z

    iput-boolean v0, p0, Lf0/s;->f:Z

    new-instance v0, Lf0/s$b;

    invoke-direct {v0, p0}, Lf0/s$b;-><init>(Lf0/s;)V

    iput-object v0, p0, Lf0/s;->g:Lg0/i$c;

    iput-object p1, p0, Lf0/s;->c:Lg0/i;

    iput-boolean p2, p0, Lf0/s;->a:Z

    invoke-virtual {p1, v0}, Lg0/i;->e(Lg0/i$c;)V

    return-void
.end method

.method public constructor <init>(Ly/a;Z)V
    .locals 3

    .line 2
    new-instance v0, Lg0/i;

    const-string v1, "flutter/restoration"

    sget-object v2, Lg0/n;->b:Lg0/n;

    invoke-direct {v0, p1, v1, v2}, Lg0/i;-><init>(Lg0/b;Ljava/lang/String;Lg0/j;)V

    invoke-direct {p0, v0, p2}, Lf0/s;-><init>(Lg0/i;Z)V

    return-void
.end method

.method static synthetic a(Lf0/s;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lf0/s;->b:[B

    return-object p0
.end method

.method static synthetic b(Lf0/s;[B)[B
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/s;->b:[B

    return-object p1
.end method

.method static synthetic c(Lf0/s;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf0/s;->f:Z

    return p1
.end method

.method static synthetic d(Lf0/s;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lf0/s;->e:Z

    return p0
.end method

.method static synthetic e(Lf0/s;[B)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf0/s;->i([B)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lf0/s;Lg0/i$d;)Lg0/i$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/s;->d:Lg0/i$d;

    return-object p1
.end method

.method private i([B)Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "enabled"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "data"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public g()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lf0/s;->b:[B

    return-void
.end method

.method public h()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/s;->b:[B

    return-object v0
.end method

.method public j([B)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lf0/s;->e:Z

    iget-object v0, p0, Lf0/s;->d:Lg0/i$d;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lf0/s;->i([B)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lg0/i$d;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lf0/s;->d:Lg0/i$d;

    :cond_0
    iput-object p1, p0, Lf0/s;->b:[B

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lf0/s;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf0/s;->c:Lg0/i;

    invoke-direct {p0, p1}, Lf0/s;->i([B)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lf0/s$a;

    invoke-direct {v2, p0, p1}, Lf0/s$a;-><init>(Lf0/s;[B)V

    const-string p1, "push"

    invoke-virtual {v0, p1, v1, v2}, Lg0/i;->d(Ljava/lang/String;Ljava/lang/Object;Lg0/i$d;)V

    :goto_0
    return-void
.end method
