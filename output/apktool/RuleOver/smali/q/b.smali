.class final Lq/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/g;


# static fields
.field public static final a:Lq/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq/b;

    invoke-direct {v0}, Lq/b;-><init>()V

    sput-object v0, Lq/b;->a:Lq/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq/f;)Lq/f;
    .locals 1

    .line 1
    const-string v0, "tracker"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
