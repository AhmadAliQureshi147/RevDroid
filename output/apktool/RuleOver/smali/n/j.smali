.class public final enum Ln/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:Ln/j;

.field public static final enum f:Ln/j;

.field public static final enum g:Ln/j;

.field private static final synthetic h:[Ln/j;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ln/j;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln/j;->e:Ln/j;

    new-instance v0, Ln/j;

    const-string v1, "LOG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ln/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln/j;->f:Ln/j;

    new-instance v0, Ln/j;

    const-string v1, "QUIET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ln/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln/j;->g:Ln/j;

    invoke-static {}, Ln/j;->a()[Ln/j;

    move-result-object v0

    sput-object v0, Ln/j;->h:[Ln/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Ln/j;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Ln/j;

    const/4 v1, 0x0

    sget-object v2, Ln/j;->e:Ln/j;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ln/j;->f:Ln/j;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ln/j;->g:Ln/j;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ln/j;
    .locals 1

    .line 1
    const-class v0, Ln/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln/j;

    return-object p0
.end method

.method public static values()[Ln/j;
    .locals 1

    .line 1
    sget-object v0, Ln/j;->h:[Ln/j;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln/j;

    return-object v0
.end method
