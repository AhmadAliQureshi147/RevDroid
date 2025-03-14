.class public final Ld1/l1$c;
.super Li1/s$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld1/l1;->E(Ljava/lang/Object;Ld1/p1;Ld1/k1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Ld1/l1;

.field final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li1/s;Ld1/l1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ld1/l1$c;->d:Ld1/l1;

    iput-object p3, p0, Ld1/l1$c;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Li1/s$a;-><init>(Li1/s;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Li1/s;

    invoke-virtual {p0, p1}, Ld1/l1$c;->f(Li1/s;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Li1/s;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Ld1/l1$c;->d:Ld1/l1;

    invoke-virtual {p1}, Ld1/l1;->Z()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Ld1/l1$c;->e:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Li1/r;->a()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method
