.class public abstract Li1/s$a;
.super Li1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final b:Li1/s;

.field public c:Li1/s;


# direct methods
.method public constructor <init>(Li1/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li1/b;-><init>()V

    iput-object p1, p0, Li1/s$a;->b:Li1/s;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Li1/s;

    invoke-virtual {p0, p1, p2}, Li1/s$a;->e(Li1/s;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Li1/s;Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Li1/s$a;->b:Li1/s;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Li1/s$a;->c:Li1/s;

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Li1/s;->j()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    invoke-static {v1, p1, p0, v0}, Landroidx/concurrent/futures/b;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Li1/s$a;->b:Li1/s;

    iget-object p2, p0, Li1/s$a;->c:Li1/s;

    invoke-static {p2}, Lw0/k;->b(Ljava/lang/Object;)V

    invoke-static {p1, p2}, Li1/s;->h(Li1/s;Li1/s;)V

    :cond_2
    return-void
.end method
