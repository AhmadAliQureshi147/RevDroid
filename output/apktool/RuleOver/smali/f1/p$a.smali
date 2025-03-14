.class final Lf1/p$a;
.super Lp0/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/p;->a(Lf1/r;Lv0/a;Ln0/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field synthetic j:Ljava/lang/Object;

.field k:I


# direct methods
.method constructor <init>(Ln0/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp0/d;-><init>(Ln0/d;)V

    return-void
.end method


# virtual methods
.method public final j(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lf1/p$a;->j:Ljava/lang/Object;

    iget p1, p0, Lf1/p$a;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lf1/p$a;->k:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Lf1/p;->a(Lf1/r;Lv0/a;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
