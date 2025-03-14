.class public final Lu/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu/b;

    invoke-direct {v0}, Lu/b;-><init>()V

    sput-object v0, Lu/b;->a:Lu/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)Z
    .locals 1

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lu/a;->a(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method
