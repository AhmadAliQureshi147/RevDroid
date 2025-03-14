.class public Lg0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/i$d;,
        Lg0/i$b;,
        Lg0/i$a;,
        Lg0/i$c;
    }
.end annotation


# instance fields
.field private final a:Lg0/b;

.field private final b:Ljava/lang/String;

.field private final c:Lg0/j;


# direct methods
.method public constructor <init>(Lg0/b;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lg0/n;->b:Lg0/n;

    invoke-direct {p0, p1, p2, v0}, Lg0/i;-><init>(Lg0/b;Ljava/lang/String;Lg0/j;)V

    return-void
.end method

.method public constructor <init>(Lg0/b;Ljava/lang/String;Lg0/j;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lg0/i;-><init>(Lg0/b;Ljava/lang/String;Lg0/j;Lg0/b$c;)V

    return-void
.end method

.method public constructor <init>(Lg0/b;Ljava/lang/String;Lg0/j;Lg0/b$c;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/i;->a:Lg0/b;

    iput-object p2, p0, Lg0/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lg0/i;->c:Lg0/j;

    return-void
.end method

.method static synthetic a(Lg0/i;)Lg0/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lg0/i;->c:Lg0/j;

    return-object p0
.end method

.method static synthetic b(Lg0/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg0/i;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lg0/i;->d(Ljava/lang/String;Ljava/lang/Object;Lg0/i$d;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;Lg0/i$d;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg0/i;->a:Lg0/b;

    iget-object v1, p0, Lg0/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lg0/i;->c:Lg0/j;

    new-instance v3, Lg0/h;

    invoke-direct {v3, p1, p2}, Lg0/h;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Lg0/j;->b(Lg0/h;)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-nez p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Lg0/i$b;

    invoke-direct {p2, p0, p3}, Lg0/i$b;-><init>(Lg0/i;Lg0/i$d;)V

    :goto_0
    invoke-interface {v0, v1, p1, p2}, Lg0/b;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg0/b$b;)V

    return-void
.end method

.method public e(Lg0/i$c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg0/i;->a:Lg0/b;

    iget-object v1, p0, Lg0/i;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lg0/i$a;

    invoke-direct {v2, p0, p1}, Lg0/i$a;-><init>(Lg0/i;Lg0/i$c;)V

    move-object p1, v2

    :goto_0
    invoke-interface {v0, v1, p1}, Lg0/b;->c(Ljava/lang/String;Lg0/b$a;)V

    return-void
.end method
