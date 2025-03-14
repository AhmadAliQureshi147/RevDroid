.class final Ln/f;
.super Ln/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln/f$a;
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ln/g;

.field private final f:Ln/j;

.field private final g:Ln/l;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ln/g;Ln/j;)V
    .locals 1

    .line 1
    const-string v0, "value"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p5, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ln/h;-><init>()V

    iput-object p1, p0, Ln/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Ln/f;->c:Ljava/lang/String;

    iput-object p3, p0, Ln/f;->d:Ljava/lang/String;

    iput-object p4, p0, Ln/f;->e:Ln/g;

    iput-object p5, p0, Ln/f;->f:Ln/j;

    new-instance p2, Ln/l;

    invoke-virtual {p0, p1, p3}, Ln/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ln/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const-string p3, "stackTrace"

    invoke-static {p1, p3}, Lw0/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x2

    invoke-static {p1, p3}, Lm0/f;->g([Ljava/lang/Object;I)Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/StackTraceElement;

    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    iput-object p2, p0, Ln/f;->g:Ln/l;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Ln/f;->f:Ln/j;

    sget-object v1, Ln/f$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ll0/i;

    invoke-direct {v0}, Ll0/i;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ln/f;->e:Ln/g;

    iget-object v1, p0, Ln/f;->c:Ljava/lang/String;

    iget-object v2, p0, Ln/f;->b:Ljava/lang/Object;

    iget-object v3, p0, Ln/f;->d:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Ln/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ln/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_2
    iget-object v0, p0, Ln/f;->g:Ln/l;

    throw v0
.end method

.method public c(Ljava/lang/String;Lv0/l;)Ln/h;
    .locals 1

    .line 1
    const-string v0, "message"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "condition"

    invoke-static {p2, p1}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
