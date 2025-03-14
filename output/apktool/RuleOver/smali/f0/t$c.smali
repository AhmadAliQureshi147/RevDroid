.class public final enum Lf0/t$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation


# static fields
.field public static final enum f:Lf0/t$c;

.field public static final enum g:Lf0/t$c;

.field private static final synthetic h:[Lf0/t$c;


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lf0/t$c;

    const-string v1, "light"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lf0/t$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/t$c;->f:Lf0/t$c;

    new-instance v0, Lf0/t$c;

    const-string v1, "dark"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lf0/t$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/t$c;->g:Lf0/t$c;

    invoke-static {}, Lf0/t$c;->a()[Lf0/t$c;

    move-result-object v0

    sput-object v0, Lf0/t$c;->h:[Lf0/t$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lf0/t$c;->e:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lf0/t$c;
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Lf0/t$c;

    const/4 v1, 0x0

    sget-object v2, Lf0/t$c;->f:Lf0/t$c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lf0/t$c;->g:Lf0/t$c;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lf0/t$c;
    .locals 1

    .line 1
    const-class v0, Lf0/t$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf0/t$c;

    return-object p0
.end method

.method public static values()[Lf0/t$c;
    .locals 1

    .line 1
    sget-object v0, Lf0/t$c;->h:[Lf0/t$c;

    invoke-virtual {v0}, [Lf0/t$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf0/t$c;

    return-object v0
.end method
