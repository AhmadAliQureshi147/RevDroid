.class final Ll0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/e;
.implements Ljava/io/Serializable;


# instance fields
.field private e:Lv0/a;

.field private volatile f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lv0/a;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "initializer"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/m;->e:Lv0/a;

    sget-object p1, Ll0/o;->a:Ll0/o;

    iput-object p1, p0, Ll0/m;->f:Ljava/lang/Object;

    if-nez p2, :cond_0

    move-object p2, p0

    :cond_0
    iput-object p2, p0, Ll0/m;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lv0/a;Ljava/lang/Object;ILw0/g;)V
    .locals 0

    .line 2
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Ll0/m;-><init>(Lv0/a;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ll0/m;->f:Ljava/lang/Object;

    sget-object v1, Ll0/o;->a:Ll0/o;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ll0/m;->f:Ljava/lang/Object;

    sget-object v1, Ll0/o;->a:Ll0/o;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ll0/m;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Ll0/m;->f:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ll0/m;->e:Lv0/a;

    invoke-static {v1}, Lw0/k;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Lv0/a;->b()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ll0/m;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Ll0/m;->e:Lv0/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ll0/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ll0/m;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    :goto_0
    return-object v0
.end method
