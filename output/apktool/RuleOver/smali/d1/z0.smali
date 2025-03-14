.class public final Ld1/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/a1;


# instance fields
.field private final e:Ld1/p1;


# direct methods
.method public constructor <init>(Ld1/p1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1/z0;->e:Ld1/p1;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ld1/p1;
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/z0;->e:Ld1/p1;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
