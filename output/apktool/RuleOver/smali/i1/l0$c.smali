.class final Li1/l0$c;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final f:Li1/l0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li1/l0$c;

    invoke-direct {v0}, Li1/l0$c;-><init>()V

    sput-object v0, Li1/l0$c;->f:Li1/l0$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lw0/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Li1/p0;Ln0/g$b;)Li1/p0;
    .locals 1

    .line 1
    instance-of v0, p2, Ld1/u1;

    if-eqz v0, :cond_0

    check-cast p2, Ld1/u1;

    iget-object v0, p1, Li1/p0;->a:Ln0/g;

    invoke-interface {p2, v0}, Ld1/u1;->e(Ln0/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Li1/p0;->a(Ld1/u1;Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Li1/p0;

    check-cast p2, Ln0/g$b;

    invoke-virtual {p0, p1, p2}, Li1/l0$c;->a(Li1/p0;Ln0/g$b;)Li1/p0;

    move-result-object p1

    return-object p1
.end method
