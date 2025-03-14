.class abstract Lc/b$e;
.super Lc/b$f;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# instance fields
.field a:Lc/b$c;

.field b:Lc/b$c;


# direct methods
.method constructor <init>(Lc/b$c;Lc/b$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/b$f;-><init>()V

    iput-object p2, p0, Lc/b$e;->a:Lc/b$c;

    iput-object p1, p0, Lc/b$e;->b:Lc/b$c;

    return-void
.end method

.method private c()Lc/b$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b$e;->b:Lc/b$c;

    iget-object v1, p0, Lc/b$e;->a:Lc/b$c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lc/b$e;->a(Lc/b$c;)Lc/b$c;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method abstract a(Lc/b$c;)Lc/b$c;
.end method

.method public b()Ljava/util/Map$Entry;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b$e;->b:Lc/b$c;

    invoke-direct {p0}, Lc/b$e;->c()Lc/b$c;

    move-result-object v1

    iput-object v1, p0, Lc/b$e;->b:Lc/b$c;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b$e;->b:Lc/b$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b$e;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
