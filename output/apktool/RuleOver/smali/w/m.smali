.class public final Lw/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/a;
.implements Ld0/a;


# instance fields
.field private final a:Lw/u;

.field private b:Lg0/i;

.field private c:Ld0/c;

.field private d:Lw/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw/u;

    invoke-direct {v0}, Lw/u;-><init>()V

    iput-object v0, p0, Lw/m;->a:Lw/u;

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw/m;->c:Ld0/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lw/m;->a:Lw/u;

    invoke-interface {v0, v1}, Ld0/c;->d(Lg0/k;)V

    iget-object v0, p0, Lw/m;->c:Ld0/c;

    iget-object v1, p0, Lw/m;->a:Lw/u;

    invoke-interface {v0, v1}, Ld0/c;->c(Lg0/l;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw/m;->c:Ld0/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lw/m;->a:Lw/u;

    invoke-interface {v0, v1}, Ld0/c;->e(Lg0/k;)V

    iget-object v0, p0, Lw/m;->c:Ld0/c;

    iget-object v1, p0, Lw/m;->a:Lw/u;

    invoke-interface {v0, v1}, Ld0/c;->b(Lg0/l;)V

    :cond_0
    return-void
.end method

.method private f(Landroid/content/Context;Lg0/b;)V
    .locals 3

    .line 1
    new-instance v0, Lg0/i;

    const-string v1, "flutter.baseflow.com/permissions/methods"

    invoke-direct {v0, p2, v1}, Lg0/i;-><init>(Lg0/b;Ljava/lang/String;)V

    iput-object v0, p0, Lw/m;->b:Lg0/i;

    new-instance p2, Lw/l;

    new-instance v0, Lw/a;

    invoke-direct {v0}, Lw/a;-><init>()V

    iget-object v1, p0, Lw/m;->a:Lw/u;

    new-instance v2, Lw/c0;

    invoke-direct {v2}, Lw/c0;-><init>()V

    invoke-direct {p2, p1, v0, v1, v2}, Lw/l;-><init>(Landroid/content/Context;Lw/a;Lw/u;Lw/c0;)V

    iput-object p2, p0, Lw/m;->d:Lw/l;

    iget-object p1, p0, Lw/m;->b:Lg0/i;

    invoke-virtual {p1, p2}, Lg0/i;->e(Lg0/i$c;)V

    return-void
.end method

.method private j(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw/m;->d:Lw/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lw/l;->j(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw/m;->b:Lg0/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg0/i;->e(Lg0/i$c;)V

    iput-object v1, p0, Lw/m;->b:Lg0/i;

    iput-object v1, p0, Lw/m;->d:Lw/l;

    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lw/m;->d:Lw/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw/l;->j(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Ld0/c;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ld0/c;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lw/m;->j(Landroid/app/Activity;)V

    iput-object p1, p0, Lw/m;->c:Ld0/c;

    invoke-direct {p0}, Lw/m;->b()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw/m;->l()V

    invoke-direct {p0}, Lw/m;->a()V

    return-void
.end method

.method public e(Lc0/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw/m;->k()V

    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw/m;->d()V

    return-void
.end method

.method public h(Ld0/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lw/m;->c(Ld0/c;)V

    return-void
.end method

.method public i(Lc0/a$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lc0/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lc0/a$b;->b()Lg0/b;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lw/m;->f(Landroid/content/Context;Lg0/b;)V

    return-void
.end method
