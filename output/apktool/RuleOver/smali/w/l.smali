.class final Lw/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/i$c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lw/a;

.field private final c:Lw/u;

.field private final d:Lw/c0;

.field private e:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/content/Context;Lw/a;Lw/u;Lw/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lw/l;->b:Lw/a;

    iput-object p3, p0, Lw/l;->c:Lw/u;

    iput-object p4, p0, Lw/l;->d:Lw/c0;

    return-void
.end method

.method public static synthetic b(Lg0/i$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lw/l;->g(Lg0/i$d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lg0/i$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lw/l;->f(Lg0/i$d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lg0/i$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lw/l;->i(Lg0/i$d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lg0/i$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lw/l;->h(Lg0/i$d;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic f(Lg0/i$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lg0/i$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic g(Lg0/i$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lg0/i$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic h(Lg0/i$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lg0/i$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic i(Lg0/i$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lg0/i$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lg0/h;Lg0/i$d;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lg0/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "requestPermissions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "openAppSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "checkPermissionStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "shouldShowRequestPermissionRationale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "checkServiceStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    invoke-interface {p2}, Lg0/i$d;->c()V

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p1}, Lg0/h;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lw/l;->c:Lw/u;

    iget-object v1, p0, Lw/l;->e:Landroid/app/Activity;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lw/f;

    invoke-direct {v2, p2}, Lw/f;-><init>(Lg0/i$d;)V

    new-instance v3, Lw/g;

    invoke-direct {v3, p2}, Lw/g;-><init>(Lg0/i$d;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lw/u;->h(Ljava/util/List;Landroid/app/Activity;Lw/u$b;Lw/b;)V

    goto :goto_1

    :pswitch_1
    iget-object p1, p0, Lw/l;->b:Lw/a;

    iget-object v0, p0, Lw/l;->a:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lw/j;

    invoke-direct {v1, p2}, Lw/j;-><init>(Lg0/i$d;)V

    new-instance v2, Lw/k;

    invoke-direct {v2, p2}, Lw/k;-><init>(Lg0/i$d;)V

    invoke-virtual {p1, v0, v1, v2}, Lw/a;->a(Landroid/content/Context;Lw/a$a;Lw/b;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p1, Lg0/h;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lw/l;->c:Lw/u;

    iget-object v1, p0, Lw/l;->a:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lw/e;

    invoke-direct {v2, p2}, Lw/e;-><init>(Lg0/i$d;)V

    invoke-virtual {v0, p1, v1, v2}, Lw/u;->e(ILandroid/content/Context;Lw/u$a;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p1, Lg0/h;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lw/l;->c:Lw/u;

    iget-object v1, p0, Lw/l;->e:Landroid/app/Activity;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lw/h;

    invoke-direct {v2, p2}, Lw/h;-><init>(Lg0/i$d;)V

    new-instance v3, Lw/i;

    invoke-direct {v3, p2}, Lw/i;-><init>(Lg0/i$d;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lw/u;->i(ILandroid/app/Activity;Lw/u$c;Lw/b;)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p1, Lg0/h;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lw/l;->d:Lw/c0;

    iget-object v1, p0, Lw/l;->a:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lw/c;

    invoke-direct {v2, p2}, Lw/c;-><init>(Lg0/i$d;)V

    new-instance v3, Lw/d;

    invoke-direct {v3, p2}, Lw/d;-><init>(Lg0/i$d;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lw/c0;->a(ILandroid/content/Context;Lw/c0$a;Lw/b;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5c086121 -> :sswitch_4
        -0x3ca2ffb7 -> :sswitch_3
        -0x22583c37 -> :sswitch_2
        0x14b278ba -> :sswitch_1
        0x637dca75 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public j(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw/l;->e:Landroid/app/Activity;

    return-void
.end method
