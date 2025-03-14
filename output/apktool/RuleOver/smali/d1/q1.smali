.class public final Ld1/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/o0;
.implements Ld1/p;


# static fields
.field public static final e:Ld1/q1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld1/q1;

    invoke-direct {v0}, Ld1/q1;-><init>()V

    sput-object v0, Ld1/q1;->e:Ld1/q1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
