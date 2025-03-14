.class public final enum Lio/flutter/embedding/android/h0$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum f:Lio/flutter/embedding/android/h0$b;

.field public static final enum g:Lio/flutter/embedding/android/h0$b;

.field public static final enum h:Lio/flutter/embedding/android/h0$b;

.field private static final synthetic i:[Lio/flutter/embedding/android/h0$b;


# instance fields
.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/flutter/embedding/android/h0$b;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "kDown"

    invoke-direct {v0, v4, v1, v2, v3}, Lio/flutter/embedding/android/h0$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/flutter/embedding/android/h0$b;->f:Lio/flutter/embedding/android/h0$b;

    new-instance v0, Lio/flutter/embedding/android/h0$b;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    const-string v4, "kUp"

    invoke-direct {v0, v4, v1, v2, v3}, Lio/flutter/embedding/android/h0$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/flutter/embedding/android/h0$b;->g:Lio/flutter/embedding/android/h0$b;

    new-instance v0, Lio/flutter/embedding/android/h0$b;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2

    const-string v4, "kRepeat"

    invoke-direct {v0, v4, v1, v2, v3}, Lio/flutter/embedding/android/h0$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lio/flutter/embedding/android/h0$b;->h:Lio/flutter/embedding/android/h0$b;

    invoke-static {}, Lio/flutter/embedding/android/h0$b;->a()[Lio/flutter/embedding/android/h0$b;

    move-result-object v0

    sput-object v0, Lio/flutter/embedding/android/h0$b;->i:[Lio/flutter/embedding/android/h0$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lio/flutter/embedding/android/h0$b;->e:J

    return-void
.end method

.method private static synthetic a()[Lio/flutter/embedding/android/h0$b;
    .locals 3

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Lio/flutter/embedding/android/h0$b;

    const/4 v1, 0x0

    sget-object v2, Lio/flutter/embedding/android/h0$b;->f:Lio/flutter/embedding/android/h0$b;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/flutter/embedding/android/h0$b;->g:Lio/flutter/embedding/android/h0$b;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lio/flutter/embedding/android/h0$b;->h:Lio/flutter/embedding/android/h0$b;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/flutter/embedding/android/h0$b;
    .locals 1

    const-class v0, Lio/flutter/embedding/android/h0$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/android/h0$b;

    return-object p0
.end method

.method public static values()[Lio/flutter/embedding/android/h0$b;
    .locals 1

    sget-object v0, Lio/flutter/embedding/android/h0$b;->i:[Lio/flutter/embedding/android/h0$b;

    invoke-virtual {v0}, [Lio/flutter/embedding/android/h0$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/flutter/embedding/android/h0$b;

    return-object v0
.end method


# virtual methods
.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/flutter/embedding/android/h0$b;->e:J

    return-wide v0
.end method
