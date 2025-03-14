.class final Lg1/a$a;
.super Lp0/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/a;->e(Lf1/r;Ln0/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field synthetic i:Ljava/lang/Object;

.field final synthetic j:Lg1/a;

.field k:I


# direct methods
.method constructor <init>(Lg1/a;Ln0/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg1/a$a;->j:Lg1/a;

    invoke-direct {p0, p2}, Lp0/d;-><init>(Ln0/d;)V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lg1/a$a;->i:Ljava/lang/Object;

    iget p1, p0, Lg1/a$a;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg1/a$a;->k:I

    iget-object p1, p0, Lg1/a$a;->j:Lg1/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lg1/a;->e(Lf1/r;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
