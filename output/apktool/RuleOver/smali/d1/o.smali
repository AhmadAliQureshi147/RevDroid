.class public final Ld1/o;
.super Ld1/g1;
.source "SourceFile"


# instance fields
.field public final i:Ld1/k;


# direct methods
.method public constructor <init>(Ld1/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld1/g1;-><init>()V

    iput-object p1, p0, Ld1/o;->i:Ld1/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ld1/o;->w(Ljava/lang/Throwable;)V

    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld1/o;->i:Ld1/k;

    invoke-virtual {p0}, Ld1/k1;->x()Ld1/l1;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld1/k;->s(Ld1/e1;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld1/k;->H(Ljava/lang/Throwable;)V

    return-void
.end method
