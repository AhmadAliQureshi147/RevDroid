.class public abstract Li1/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li1/h0;

.field private static final b:Lv0/p;

.field private static final c:Lv0/p;

.field private static final d:Lv0/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li1/h0;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Li1/l0;->a:Li1/h0;

    sget-object v0, Li1/l0$a;->f:Li1/l0$a;

    sput-object v0, Li1/l0;->b:Lv0/p;

    sget-object v0, Li1/l0$b;->f:Li1/l0$b;

    sput-object v0, Li1/l0;->c:Lv0/p;

    sget-object v0, Li1/l0$c;->f:Li1/l0$c;

    sput-object v0, Li1/l0;->d:Lv0/p;

    return-void
.end method

.method public static final a(Ln0/g;Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Li1/l0;->a:Li1/h0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Li1/p0;

    if-eqz v0, :cond_1

    check-cast p1, Li1/p0;

    invoke-virtual {p1, p0}, Li1/p0;->b(Ln0/g;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sget-object v1, Li1/l0;->c:Lv0/p;

    invoke-interface {p0, v0, v1}, Ln0/g;->m(Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ld1/u1;

    invoke-interface {v0, p0, p1}, Ld1/u1;->f(Ln0/g;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final b(Ln0/g;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Li1/l0;->b:Lv0/p;

    invoke-interface {p0, v0, v1}, Ln0/g;->m(Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lw0/k;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Ln0/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    invoke-static {p0}, Li1/l0;->b(Ln0/g;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Li1/l0;->a:Li1/h0;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    new-instance v0, Li1/p0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Li1/p0;-><init>(Ln0/g;I)V

    sget-object p1, Li1/l0;->d:Lv0/p;

    invoke-interface {p0, v0, p1}, Ln0/g;->m(Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {p1, v0}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ld1/u1;

    invoke-interface {p1, p0}, Ld1/u1;->e(Ln0/g;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method
