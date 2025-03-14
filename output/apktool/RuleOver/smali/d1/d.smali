.class final Ld1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/r1;


# static fields
.field public static final e:Ld1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld1/d;

    invoke-direct {v0}, Ld1/d;-><init>()V

    sput-object v0, Ld1/d;->e:Ld1/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Active"

    return-object v0
.end method
