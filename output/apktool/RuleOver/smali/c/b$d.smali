.class public Lc/b$d;
.super Lc/b$f;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field private a:Lc/b$c;

.field private b:Z

.field final synthetic c:Lc/b;


# direct methods
.method constructor <init>(Lc/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b$d;->c:Lc/b;

    invoke-direct {p0}, Lc/b$f;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/b$d;->b:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b$d;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/b$d;->b:Z

    iget-object v0, p0, Lc/b$d;->c:Lc/b;

    iget-object v0, v0, Lc/b;->e:Lc/b$c;

    :goto_0
    iput-object v0, p0, Lc/b$d;->a:Lc/b$c;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lc/b$d;->a:Lc/b$c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lc/b$c;->c:Lc/b$c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lc/b$d;->a:Lc/b$c;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lc/b$d;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/b$d;->c:Lc/b;

    iget-object v0, v0, Lc/b;->e:Lc/b$c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lc/b$d;->a:Lc/b$c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lc/b$c;->c:Lc/b$c;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b$d;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
