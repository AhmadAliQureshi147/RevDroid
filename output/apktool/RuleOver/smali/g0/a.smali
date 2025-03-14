.class public final Lg0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg0/a$e;,
        Lg0/a$c;,
        Lg0/a$b;,
        Lg0/a$d;
    }
.end annotation


# instance fields
.field private final a:Lg0/b;

.field private final b:Ljava/lang/String;

.field private final c:Lg0/g;


# direct methods
.method public constructor <init>(Lg0/b;Ljava/lang/String;Lg0/g;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lg0/a;-><init>(Lg0/b;Ljava/lang/String;Lg0/g;Lg0/b$c;)V

    return-void
.end method

.method public constructor <init>(Lg0/b;Ljava/lang/String;Lg0/g;Lg0/b$c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg0/a;->a:Lg0/b;

    iput-object p2, p0, Lg0/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lg0/a;->c:Lg0/g;

    return-void
.end method

.method static synthetic a(Lg0/a;)Lg0/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lg0/a;->c:Lg0/g;

    return-object p0
.end method

.method static synthetic b(Lg0/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg0/a;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lg0/a;->d(Ljava/lang/Object;Lg0/a$e;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Lg0/a$e;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg0/a;->a:Lg0/b;

    iget-object v1, p0, Lg0/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lg0/a;->c:Lg0/g;

    invoke-interface {v2, p1}, Lg0/g;->b(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lg0/a$c;

    invoke-direct {v3, p0, p2, v2}, Lg0/a$c;-><init>(Lg0/a;Lg0/a$e;Lg0/a$a;)V

    move-object v2, v3

    :goto_0
    invoke-interface {v0, v1, p1, v2}, Lg0/b;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg0/b$b;)V

    return-void
.end method

.method public e(Lg0/a$d;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg0/a;->a:Lg0/b;

    iget-object v1, p0, Lg0/a;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lg0/a$b;

    invoke-direct {v3, p0, p1, v2}, Lg0/a$b;-><init>(Lg0/a;Lg0/a$d;Lg0/a$a;)V

    move-object v2, v3

    :goto_0
    invoke-interface {v0, v1, v2}, Lg0/b;->c(Ljava/lang/String;Lg0/b$a;)V

    return-void
.end method
