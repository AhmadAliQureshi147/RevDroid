.class public final Lq/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/f;


# instance fields
.field private final b:Lq/m;

.field private final c:Lr/a;


# direct methods
.method public constructor <init>(Lq/m;Lr/a;)V
    .locals 1

    .line 1
    const-string v0, "windowMetricsCalculator"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "windowBackend"

    invoke-static {p2, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/i;->b:Lq/m;

    iput-object p2, p0, Lq/i;->c:Lr/a;

    return-void
.end method

.method public static final synthetic b(Lq/i;)Lr/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lq/i;->c:Lr/a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lg1/c;
    .locals 2

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lq/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lq/i$a;-><init>(Lq/i;Landroid/app/Activity;Ln0/d;)V

    invoke-static {v0}, Lg1/e;->a(Lv0/p;)Lg1/c;

    move-result-object p1

    invoke-static {}, Ld1/n0;->c()Ld1/o1;

    move-result-object v0

    invoke-static {p1, v0}, Lg1/e;->d(Lg1/c;Ln0/g;)Lg1/c;

    move-result-object p1

    return-object p1
.end method
