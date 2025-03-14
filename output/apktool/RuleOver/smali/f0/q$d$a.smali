.class public final enum Lf0/q$d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/q$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum e:Lf0/q$d$a;

.field public static final enum f:Lf0/q$d$a;

.field public static final enum g:Lf0/q$d$a;

.field private static final synthetic h:[Lf0/q$d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lf0/q$d$a;

    const-string v1, "TEXTURE_WITH_VIRTUAL_FALLBACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf0/q$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf0/q$d$a;->e:Lf0/q$d$a;

    new-instance v0, Lf0/q$d$a;

    const-string v1, "TEXTURE_WITH_HYBRID_FALLBACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf0/q$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf0/q$d$a;->f:Lf0/q$d$a;

    new-instance v0, Lf0/q$d$a;

    const-string v1, "HYBRID_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lf0/q$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf0/q$d$a;->g:Lf0/q$d$a;

    invoke-static {}, Lf0/q$d$a;->a()[Lf0/q$d$a;

    move-result-object v0

    sput-object v0, Lf0/q$d$a;->h:[Lf0/q$d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lf0/q$d$a;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lf0/q$d$a;

    const/4 v1, 0x0

    sget-object v2, Lf0/q$d$a;->e:Lf0/q$d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lf0/q$d$a;->f:Lf0/q$d$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lf0/q$d$a;->g:Lf0/q$d$a;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lf0/q$d$a;
    .locals 1

    .line 1
    const-class v0, Lf0/q$d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf0/q$d$a;

    return-object p0
.end method

.method public static values()[Lf0/q$d$a;
    .locals 1

    .line 1
    sget-object v0, Lf0/q$d$a;->h:[Lf0/q$d$a;

    invoke-virtual {v0}, [Lf0/q$d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf0/q$d$a;

    return-object v0
.end method
