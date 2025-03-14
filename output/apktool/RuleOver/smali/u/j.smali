.class public final Lu/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu/j;

    invoke-direct {v0}, Lu/j;-><init>()V

    sput-object v0, Lu/j;->a:Lu/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    .line 1
    const-string v0, "display"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "point"

    invoke-static {p2, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method
