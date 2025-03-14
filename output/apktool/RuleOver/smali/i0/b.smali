.class public Li0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/b$c;
    }
.end annotation


# static fields
.field private static c:Ljava/util/HashMap;


# instance fields
.field private final a:Li0/b$c;

.field private final b:Lf0/m;


# direct methods
.method public constructor <init>(Li0/b$c;Lf0/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/b;->a:Li0/b$c;

    iput-object p2, p0, Li0/b;->b:Lf0/m;

    new-instance p1, Li0/b$a;

    invoke-direct {p1, p0}, Li0/b$a;-><init>(Li0/b;)V

    invoke-virtual {p2, p1}, Lf0/m;->b(Lf0/m$b;)V

    return-void
.end method

.method static synthetic a(Li0/b;Ljava/lang/String;)Landroid/view/PointerIcon;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li0/b;->d(Ljava/lang/String;)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Li0/b;)Li0/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Li0/b;->a:Li0/b$c;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Landroid/view/PointerIcon;
    .locals 2

    .line 1
    sget-object v0, Li0/b;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Li0/b$b;

    invoke-direct {v0, p0}, Li0/b$b;-><init>(Li0/b;)V

    sput-object v0, Li0/b;->c:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Li0/b;->c:Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Li0/a;->a(Ljava/util/HashMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Li0/b;->a:Li0/b$c;

    invoke-interface {v0, p1}, Li0/b$c;->b(I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Li0/b;->b:Lf0/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf0/m;->b(Lf0/m$b;)V

    return-void
.end method
