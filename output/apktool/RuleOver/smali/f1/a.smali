.class public final enum Lf1/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:Lf1/a;

.field public static final enum f:Lf1/a;

.field public static final enum g:Lf1/a;

.field private static final synthetic h:[Lf1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lf1/a;

    const-string v1, "SUSPEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lf1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf1/a;->e:Lf1/a;

    new-instance v0, Lf1/a;

    const-string v1, "DROP_OLDEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lf1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf1/a;->f:Lf1/a;

    new-instance v0, Lf1/a;

    const-string v1, "DROP_LATEST"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lf1/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf1/a;->g:Lf1/a;

    invoke-static {}, Lf1/a;->a()[Lf1/a;

    move-result-object v0

    sput-object v0, Lf1/a;->h:[Lf1/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lf1/a;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lf1/a;

    const/4 v1, 0x0

    sget-object v2, Lf1/a;->e:Lf1/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lf1/a;->f:Lf1/a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lf1/a;->g:Lf1/a;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lf1/a;
    .locals 1

    .line 1
    const-class v0, Lf1/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf1/a;

    return-object p0
.end method

.method public static values()[Lf1/a;
    .locals 1

    .line 1
    sget-object v0, Lf1/a;->h:[Lf1/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf1/a;

    return-object v0
.end method
