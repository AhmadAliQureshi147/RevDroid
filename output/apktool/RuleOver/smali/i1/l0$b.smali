.class final Li1/l0$b;
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
.field public static final f:Li1/l0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li1/l0$b;

    invoke-direct {v0}, Li1/l0$b;-><init>()V

    sput-object v0, Li1/l0$b;->f:Li1/l0$b;

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
.method public final a(Ld1/u1;Ln0/g$b;)Ld1/u1;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    instance-of p1, p2, Ld1/u1;

    if-eqz p1, :cond_1

    check-cast p2, Ld1/u1;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ld1/u1;

    check-cast p2, Ln0/g$b;

    invoke-virtual {p0, p1, p2}, Li1/l0$b;->a(Ld1/u1;Ln0/g$b;)Ld1/u1;

    move-result-object p1

    return-object p1
.end method
