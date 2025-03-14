.class public abstract Lw0/n;
.super Lw0/p;
.source "SourceFile"

# interfaces
.implements La1/f;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lw0/p;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, La1/f;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected c()La1/a;
    .locals 1

    .line 1
    invoke-static {p0}, Lw0/r;->d(Lw0/n;)La1/f;

    move-result-object v0

    return-object v0
.end method
