.class public final Lk1/c;
.super Lk1/f;
.source "SourceFile"


# static fields
.field public static final m:Lk1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk1/c;

    invoke-direct {v0}, Lk1/c;-><init>()V

    sput-object v0, Lk1/c;->m:Lk1/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .line 1
    sget v1, Lk1/l;->c:I

    sget v2, Lk1/l;->d:I

    sget-wide v3, Lk1/l;->e:J

    sget-object v5, Lk1/l;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lk1/f;-><init>(IIJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
