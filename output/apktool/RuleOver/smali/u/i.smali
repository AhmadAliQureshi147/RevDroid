.class public final Lu/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu/i;

    invoke-direct {v0}, Lu/i;-><init>()V

    sput-object v0, Lu/i;->a:Lu/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/view/WindowManager;

    invoke-static {p1, v0}, Lu/d;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p1}, Lu/e;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-static {p1}, Lu/g;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "wm.currentWindowMetrics.bounds"

    invoke-static {p1, v0}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Landroidx/core/view/i;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/view/WindowManager;

    invoke-static {p1, v0}, Lu/d;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p1}, Lu/e;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-static {p1}, Lu/f;->a(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object p1

    const-string v0, "context.getSystemService\u2026indowMetrics.windowInsets"

    invoke-static {p1, v0}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/core/view/i;->m(Landroid/view/WindowInsets;)Landroidx/core/view/i;

    move-result-object p1

    const-string v0, "toWindowInsetsCompat(platformInsets)"

    invoke-static {p1, v0}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Landroid/content/Context;)Lq/k;
    .locals 3

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/view/WindowManager;

    invoke-static {p1, v0}, Lu/d;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p1}, Lu/e;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, Lu/f;->a(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/i;->m(Landroid/view/WindowInsets;)Landroidx/core/view/i;

    move-result-object v0

    const-string v1, "toWindowInsetsCompat(wm.\u2026ndowMetrics.windowInsets)"

    invoke-static {v0, v1}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lq/k;

    invoke-static {p1}, Lu/e;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-static {p1}, Lu/g;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p1

    const-string v2, "wm.currentWindowMetrics.bounds"

    invoke-static {p1, v2}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lq/k;-><init>(Landroid/graphics/Rect;Landroidx/core/view/i;)V

    return-object v1
.end method

.method public final d(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/view/WindowManager;

    invoke-static {p1, v0}, Lu/d;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p1}, Lu/h;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-static {p1}, Lu/g;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "wm.maximumWindowMetrics.bounds"

    invoke-static {p1, v0}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
