.class public final enum Lf0/w$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation


# static fields
.field public static final enum f:Lf0/w$g;

.field public static final enum g:Lf0/w$g;

.field public static final enum h:Lf0/w$g;

.field public static final enum i:Lf0/w$g;

.field public static final enum j:Lf0/w$g;

.field public static final enum k:Lf0/w$g;

.field public static final enum l:Lf0/w$g;

.field public static final enum m:Lf0/w$g;

.field public static final enum n:Lf0/w$g;

.field public static final enum o:Lf0/w$g;

.field public static final enum p:Lf0/w$g;

.field private static final synthetic q:[Lf0/w$g;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lf0/w$g;

    const/4 v1, 0x0

    const-string v2, "TextInputType.text"

    const-string v3, "TEXT"

    invoke-direct {v0, v3, v1, v2}, Lf0/w$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/w$g;->f:Lf0/w$g;

    new-instance v0, Lf0/w$g;

    const/4 v1, 0x1

    const-string v2, "TextInputType.datetime"

    const-string v3, "DATETIME"

    invoke-direct {v0, v3, v1, v2}, Lf0/w$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/w$g;->g:Lf0/w$g;

    new-instance v0, Lf0/w$g;

    const/4 v1, 0x2

    const-string v2, "TextInputType.name"

    const-string v3, "NAME"

    invoke-direct {v0, v3, v1, v2}, Lf0/w$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/w$g;->h:Lf0/w$g;

    new-instance v0, Lf0/w$g;

    const/4 v1, 0x3

    const-string v2, "TextInputType.address"

    const-string v3, "POSTAL_ADDRESS"

    invoke-direct {v0, v3, v1, v2}, Lf0/w$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/w$g;->i:Lf0/w$g;

    new-instance v0, Lf0/w$g;

    const/4 v1, 0x4

    const-string v2, "TextInputType.number"

    const-string v3, "NUMBER"

    invoke-direct {v0, v3, v1, v2}, Lf0/w$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/w$g;->j:Lf0/w$g;

    new-instance v0, Lf0/w$g;

    const/4 v1, 0x5

    const-string v2, "TextInputType.phone"

    const-string v3, "PHONE"

    invoke-direct {v0, v3, v1, v2}, Lf0/w$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/w$g;->k:Lf0/w$g;

    new-instance v0, Lf0/w$g;

    const/4 v1, 0x6

    const-string v2, "TextInputType.multiline"

    const-string v3, "MULTILINE"

    invoke-direct {v0, v3, v1, v2}, Lf0/w$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/w$g;->l:Lf0/w$g;

    new-instance v0, Lf0/w$g;

    const/4 v1, 0x7

    const-string v2, "TextInputType.emailAddress"

    const-string v3, "EMAIL_ADDRESS"

    invoke-direct {v0, v3, v1, v2}, Lf0/w$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/w$g;->m:Lf0/w$g;

    new-instance v0, Lf0/w$g;

    const/16 v1, 0x8

    const-string v2, "TextInputType.url"

    const-string v3, "URL"

    invoke-direct {v0, v3, v1, v2}, Lf0/w$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/w$g;->n:Lf0/w$g;

    new-instance v0, Lf0/w$g;

    const/16 v1, 0x9

    const-string v2, "TextInputType.visiblePassword"

    const-string v3, "VISIBLE_PASSWORD"

    invoke-direct {v0, v3, v1, v2}, Lf0/w$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/w$g;->o:Lf0/w$g;

    new-instance v0, Lf0/w$g;

    const/16 v1, 0xa

    const-string v2, "TextInputType.none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lf0/w$g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lf0/w$g;->p:Lf0/w$g;

    invoke-static {}, Lf0/w$g;->a()[Lf0/w$g;

    move-result-object v0

    sput-object v0, Lf0/w$g;->q:[Lf0/w$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lf0/w$g;->e:Ljava/lang/String;

    return-void
.end method

.method private static synthetic a()[Lf0/w$g;
    .locals 3

    .line 1
    const/16 v0, 0xb

    new-array v0, v0, [Lf0/w$g;

    const/4 v1, 0x0

    sget-object v2, Lf0/w$g;->f:Lf0/w$g;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lf0/w$g;->g:Lf0/w$g;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lf0/w$g;->h:Lf0/w$g;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lf0/w$g;->i:Lf0/w$g;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lf0/w$g;->j:Lf0/w$g;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lf0/w$g;->k:Lf0/w$g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lf0/w$g;->l:Lf0/w$g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lf0/w$g;->m:Lf0/w$g;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lf0/w$g;->n:Lf0/w$g;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lf0/w$g;->o:Lf0/w$g;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lf0/w$g;->p:Lf0/w$g;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static b(Ljava/lang/String;)Lf0/w$g;
    .locals 5

    .line 1
    invoke-static {}, Lf0/w$g;->values()[Lf0/w$g;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lf0/w$g;->e:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such TextInputType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lf0/w$g;
    .locals 1

    .line 1
    const-class v0, Lf0/w$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf0/w$g;

    return-object p0
.end method

.method public static values()[Lf0/w$g;
    .locals 1

    .line 1
    sget-object v0, Lf0/w$g;->q:[Lf0/w$g;

    invoke-virtual {v0}, [Lf0/w$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf0/w$g;

    return-object v0
.end method
