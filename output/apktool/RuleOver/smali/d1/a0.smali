.class public abstract Ld1/a0;
.super Ln0/a;
.source "SourceFile"

# interfaces
.implements Ln0/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/a0$a;
    }
.end annotation


# static fields
.field public static final f:Ld1/a0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld1/a0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld1/a0$a;-><init>(Lw0/g;)V

    sput-object v0, Ld1/a0;->f:Ld1/a0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln0/e;->d:Ln0/e$b;

    invoke-direct {p0, v0}, Ln0/a;-><init>(Ln0/g$c;)V

    return-void
.end method


# virtual methods
.method public a(Ln0/g$c;)Ln0/g$b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ln0/e$a;->a(Ln0/e;Ln0/g$c;)Ln0/g$b;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ln0/d;)Ln0/d;
    .locals 1

    .line 1
    new-instance v0, Li1/j;

    invoke-direct {v0, p0, p1}, Li1/j;-><init>(Ld1/a0;Ln0/d;)V

    return-object v0
.end method

.method public abstract g(Ln0/g;Ljava/lang/Runnable;)V
.end method

.method public h(Ln0/g;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public l(Ln0/g$c;)Ln0/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ln0/e$a;->b(Ln0/e;Ln0/g$c;)Ln0/g;

    move-result-object p1

    return-object p1
.end method

.method public n(I)Ld1/a0;
    .locals 1

    .line 1
    invoke-static {p1}, Li1/p;->a(I)V

    new-instance v0, Li1/o;

    invoke-direct {v0, p0, p1}, Li1/o;-><init>(Ld1/a0;I)V

    return-object v0
.end method

.method public final p(Ln0/d;)V
    .locals 1

    .line 1
    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {p1, v0}, Lw0/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Li1/j;

    invoke-virtual {p1}, Li1/j;->o()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ld1/h0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ld1/h0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
