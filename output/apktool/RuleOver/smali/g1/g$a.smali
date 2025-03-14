.class final Lg1/g$a;
.super Lp0/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg1/g;->c(Lg1/d;Lf1/s;ZLn0/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Z

.field synthetic l:Ljava/lang/Object;

.field m:I


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
    iput-object p1, p0, Lg1/g$a;->l:Ljava/lang/Object;

    iget p1, p0, Lg1/g$a;->m:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg1/g$a;->m:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p1, v0, p0}, Lg1/g;->a(Lg1/d;Lf1/s;ZLn0/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
