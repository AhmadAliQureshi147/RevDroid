.class Ld1/t1;
.super Ld1/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ln0/g;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Ld1/a;-><init>(Ln0/g;ZZ)V

    return-void
.end method


# virtual methods
.method protected a0(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld1/a;->h()Ln0/g;

    move-result-object v0

    invoke-static {v0, p1}, Ld1/c0;->a(Ln0/g;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1
.end method
