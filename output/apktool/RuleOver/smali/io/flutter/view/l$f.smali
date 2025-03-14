.class final enum Lio/flutter/view/l$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "f"
.end annotation


# static fields
.field public static final enum f:Lio/flutter/view/l$f;

.field public static final enum g:Lio/flutter/view/l$f;

.field public static final enum h:Lio/flutter/view/l$f;

.field public static final enum i:Lio/flutter/view/l$f;

.field public static final enum j:Lio/flutter/view/l$f;

.field public static final enum k:Lio/flutter/view/l$f;

.field public static final enum l:Lio/flutter/view/l$f;

.field private static final synthetic m:[Lio/flutter/view/l$f;


# instance fields
.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/flutter/view/l$f;

    const-string v1, "ACCESSIBLE_NAVIGATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/l$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/l$f;->f:Lio/flutter/view/l$f;

    new-instance v0, Lio/flutter/view/l$f;

    const-string v1, "INVERT_COLORS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lio/flutter/view/l$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/l$f;->g:Lio/flutter/view/l$f;

    new-instance v0, Lio/flutter/view/l$f;

    const-string v1, "DISABLE_ANIMATIONS"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lio/flutter/view/l$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/l$f;->h:Lio/flutter/view/l$f;

    new-instance v0, Lio/flutter/view/l$f;

    const/4 v1, 0x3

    const/16 v2, 0x8

    const-string v4, "BOLD_TEXT"

    invoke-direct {v0, v4, v1, v2}, Lio/flutter/view/l$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/l$f;->i:Lio/flutter/view/l$f;

    new-instance v0, Lio/flutter/view/l$f;

    const-string v1, "REDUCE_MOTION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v3, v2}, Lio/flutter/view/l$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/l$f;->j:Lio/flutter/view/l$f;

    new-instance v0, Lio/flutter/view/l$f;

    const/4 v1, 0x5

    const/16 v2, 0x20

    const-string v3, "HIGH_CONTRAST"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/l$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/l$f;->k:Lio/flutter/view/l$f;

    new-instance v0, Lio/flutter/view/l$f;

    const/4 v1, 0x6

    const/16 v2, 0x40

    const-string v3, "ON_OFF_SWITCH_LABELS"

    invoke-direct {v0, v3, v1, v2}, Lio/flutter/view/l$f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lio/flutter/view/l$f;->l:Lio/flutter/view/l$f;

    invoke-static {}, Lio/flutter/view/l$f;->a()[Lio/flutter/view/l$f;

    move-result-object v0

    sput-object v0, Lio/flutter/view/l$f;->m:[Lio/flutter/view/l$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lio/flutter/view/l$f;->e:I

    return-void
.end method

.method private static synthetic a()[Lio/flutter/view/l$f;
    .locals 3

    .line 1
    const/4 v0, 0x7

    new-array v0, v0, [Lio/flutter/view/l$f;

    const/4 v1, 0x0

    sget-object v2, Lio/flutter/view/l$f;->f:Lio/flutter/view/l$f;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/flutter/view/l$f;->g:Lio/flutter/view/l$f;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/flutter/view/l$f;->h:Lio/flutter/view/l$f;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lio/flutter/view/l$f;->i:Lio/flutter/view/l$f;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lio/flutter/view/l$f;->j:Lio/flutter/view/l$f;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lio/flutter/view/l$f;->k:Lio/flutter/view/l$f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lio/flutter/view/l$f;->l:Lio/flutter/view/l$f;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/view/l$f;
    .locals 1

    const-class v0, Lio/flutter/view/l$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/view/l$f;

    return-object p0
.end method

.method public static values()[Lio/flutter/view/l$f;
    .locals 1

    sget-object v0, Lio/flutter/view/l$f;->m:[Lio/flutter/view/l$f;

    invoke-virtual {v0}, [Lio/flutter/view/l$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/view/l$f;

    return-object v0
.end method
