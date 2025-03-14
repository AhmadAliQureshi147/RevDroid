.class public final Lq/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lq/f$a;

.field private static final b:Z

.field private static final c:Ljava/lang/String;

.field private static final d:Ll0/e;

.field private static e:Lq/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq/f$a;

    invoke-direct {v0}, Lq/f$a;-><init>()V

    sput-object v0, Lq/f$a;->a:Lq/f$a;

    const-class v0, Lq/f;

    invoke-static {v0}, Lw0/r;->b(Ljava/lang/Class;)La1/b;

    move-result-object v0

    invoke-interface {v0}, La1/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lq/f$a;->c:Ljava/lang/String;

    sget-object v0, Lq/f$a$a;->f:Lq/f$a$a;

    invoke-static {v0}, Ll0/f;->a(Lv0/a;)Ll0/e;

    move-result-object v0

    sput-object v0, Lq/f$a;->d:Ll0/e;

    sget-object v0, Lq/b;->a:Lq/b;

    sput-object v0, Lq/f$a;->e:Lq/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lq/f$a;->b:Z

    return v0
.end method

.method public static final synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lq/f$a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final c()Lr/a;
    .locals 1

    .line 1
    sget-object v0, Lq/f$a;->d:Ll0/e;

    invoke-interface {v0}, Ll0/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/a;

    return-object v0
.end method

.method public final d(Landroid/content/Context;)Lq/f;
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lq/f$a;->c()Lr/a;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/window/layout/adapter/sidecar/b;->c:Landroidx/window/layout/adapter/sidecar/b$a;

    invoke-virtual {v0, p1}, Landroidx/window/layout/adapter/sidecar/b$a;->a(Landroid/content/Context;)Landroidx/window/layout/adapter/sidecar/b;

    move-result-object v0

    :cond_0
    new-instance p1, Lq/i;

    sget-object v1, Lq/p;->b:Lq/p;

    invoke-direct {p1, v1, v0}, Lq/i;-><init>(Lq/m;Lr/a;)V

    sget-object v0, Lq/f$a;->e:Lq/g;

    invoke-interface {v0, p1}, Lq/g;->a(Lq/f;)Lq/f;

    move-result-object p1

    return-object p1
.end method
