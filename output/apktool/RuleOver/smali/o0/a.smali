.class public final enum Lo0/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum e:Lo0/a;

.field public static final enum f:Lo0/a;

.field public static final enum g:Lo0/a;

.field private static final synthetic h:[Lo0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lo0/a;

    const-string v1, "COROUTINE_SUSPENDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo0/a;->e:Lo0/a;

    new-instance v0, Lo0/a;

    const-string v1, "UNDECIDED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo0/a;->f:Lo0/a;

    new-instance v0, Lo0/a;

    const-string v1, "RESUMED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo0/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo0/a;->g:Lo0/a;

    invoke-static {}, Lo0/a;->a()[Lo0/a;

    move-result-object v0

    sput-object v0, Lo0/a;->h:[Lo0/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lo0/a;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lo0/a;

    const/4 v1, 0x0

    sget-object v2, Lo0/a;->e:Lo0/a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lo0/a;->f:Lo0/a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lo0/a;->g:Lo0/a;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lo0/a;
    .locals 1

    .line 1
    const-class v0, Lo0/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo0/a;

    return-object p0
.end method

.method public static values()[Lo0/a;
    .locals 1

    .line 1
    sget-object v0, Lo0/a;->h:[Lo0/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo0/a;

    return-object v0
.end method
