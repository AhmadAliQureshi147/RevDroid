.class public final enum Ld1/f0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/f0$a;
    }
.end annotation


# static fields
.field public static final enum e:Ld1/f0;

.field public static final enum f:Ld1/f0;

.field public static final enum g:Ld1/f0;

.field public static final enum h:Ld1/f0;

.field private static final synthetic i:[Ld1/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ld1/f0;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld1/f0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld1/f0;->e:Ld1/f0;

    new-instance v0, Ld1/f0;

    const-string v1, "LAZY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ld1/f0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld1/f0;->f:Ld1/f0;

    new-instance v0, Ld1/f0;

    const-string v1, "ATOMIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ld1/f0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld1/f0;->g:Ld1/f0;

    new-instance v0, Ld1/f0;

    const-string v1, "UNDISPATCHED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ld1/f0;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld1/f0;->h:Ld1/f0;

    invoke-static {}, Ld1/f0;->a()[Ld1/f0;

    move-result-object v0

    sput-object v0, Ld1/f0;->i:[Ld1/f0;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Ld1/f0;
    .locals 3

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [Ld1/f0;

    const/4 v1, 0x0

    sget-object v2, Ld1/f0;->e:Ld1/f0;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ld1/f0;->f:Ld1/f0;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ld1/f0;->g:Ld1/f0;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ld1/f0;->h:Ld1/f0;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ld1/f0;
    .locals 1

    .line 1
    const-class v0, Ld1/f0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ld1/f0;

    return-object p0
.end method

.method public static values()[Ld1/f0;
    .locals 1

    .line 1
    sget-object v0, Ld1/f0;->i:[Ld1/f0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld1/f0;

    return-object v0
.end method


# virtual methods
.method public final b(Lv0/p;Ljava/lang/Object;Ln0/d;)V
    .locals 6

    .line 1
    sget-object v0, Ld1/f0$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ll0/i;

    invoke-direct {p1}, Ll0/i;-><init>()V

    throw p1

    :cond_1
    invoke-static {p1, p2, p3}, Lj1/b;->a(Lv0/p;Ljava/lang/Object;Ln0/d;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, p3}, Ln0/f;->a(Lv0/p;Ljava/lang/Object;Ln0/d;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lj1/a;->d(Lv0/p;Ljava/lang/Object;Ln0/d;Lv0/l;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .line 1
    sget-object v0, Ld1/f0;->f:Ld1/f0;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
