.class public final Lp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/f;


# instance fields
.field private final b:Lq/f;

.field private final c:Lo/a;


# direct methods
.method public constructor <init>(Lq/f;)V
    .locals 1

    .line 1
    const-string v0, "tracker"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo/a;

    invoke-direct {v0}, Lo/a;-><init>()V

    invoke-direct {p0, p1, v0}, Lp/a;-><init>(Lq/f;Lo/a;)V

    return-void
.end method

.method private constructor <init>(Lq/f;Lo/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp/a;->b:Lq/f;

    iput-object p2, p0, Lp/a;->c:Lo/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lg1/c;
    .locals 1

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lp/a;->b:Lq/f;

    invoke-interface {v0, p1}, Lq/f;->a(Landroid/app/Activity;)Lg1/c;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lg/a;)V
    .locals 2

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumer"

    invoke-static {p3, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lp/a;->c:Lo/a;

    iget-object v1, p0, Lp/a;->b:Lq/f;

    invoke-interface {v1, p1}, Lq/f;->a(Landroid/app/Activity;)Lg1/c;

    move-result-object p1

    invoke-virtual {v0, p2, p3, p1}, Lo/a;->a(Ljava/util/concurrent/Executor;Lg/a;Lg1/c;)V

    return-void
.end method

.method public final c(Lg/a;)V
    .locals 1

    .line 1
    const-string v0, "consumer"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lp/a;->c:Lo/a;

    invoke-virtual {v0, p1}, Lo/a;->b(Lg/a;)V

    return-void
.end method
