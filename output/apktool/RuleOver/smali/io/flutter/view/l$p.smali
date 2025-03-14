.class final enum Lio/flutter/view/l$p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "p"
.end annotation


# static fields
.field public static final enum e:Lio/flutter/view/l$p;

.field public static final enum f:Lio/flutter/view/l$p;

.field public static final enum g:Lio/flutter/view/l$p;

.field private static final synthetic h:[Lio/flutter/view/l$p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/flutter/view/l$p;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/view/l$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/l$p;->e:Lio/flutter/view/l$p;

    new-instance v0, Lio/flutter/view/l$p;

    const-string v1, "LTR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/flutter/view/l$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/l$p;->f:Lio/flutter/view/l$p;

    new-instance v0, Lio/flutter/view/l$p;

    const-string v1, "RTL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/flutter/view/l$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/flutter/view/l$p;->g:Lio/flutter/view/l$p;

    invoke-static {}, Lio/flutter/view/l$p;->a()[Lio/flutter/view/l$p;

    move-result-object v0

    sput-object v0, Lio/flutter/view/l$p;->h:[Lio/flutter/view/l$p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lio/flutter/view/l$p;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lio/flutter/view/l$p;

    const/4 v1, 0x0

    sget-object v2, Lio/flutter/view/l$p;->e:Lio/flutter/view/l$p;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/flutter/view/l$p;->f:Lio/flutter/view/l$p;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/flutter/view/l$p;->g:Lio/flutter/view/l$p;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static b(I)Lio/flutter/view/l$p;
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lio/flutter/view/l$p;->e:Lio/flutter/view/l$p;

    return-object p0

    :cond_0
    sget-object p0, Lio/flutter/view/l$p;->f:Lio/flutter/view/l$p;

    return-object p0

    :cond_1
    sget-object p0, Lio/flutter/view/l$p;->g:Lio/flutter/view/l$p;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/l$p;
    .locals 1

    const-class v0, Lio/flutter/view/l$p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/l$p;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/l$p;
    .locals 1

    sget-object v0, Lio/flutter/view/l$p;->h:[Lio/flutter/view/l$p;

    invoke-virtual {v0}, [Lio/flutter/view/l$p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/l$p;

    return-object v0
.end method
