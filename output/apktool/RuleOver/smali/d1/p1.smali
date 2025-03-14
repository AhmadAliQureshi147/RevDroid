.class public final Ld1/p1;
.super Li1/q;
.source "SourceFile"

# interfaces
.implements Ld1/a1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Li1/q;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public d()Ld1/p1;
    .locals 0

    .line 1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Li1/s;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
