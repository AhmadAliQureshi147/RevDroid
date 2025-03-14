.class final Lk1/m;
.super Ld1/a0;
.source "SourceFile"


# static fields
.field public static final g:Lk1/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk1/m;

    invoke-direct {v0}, Lk1/m;-><init>()V

    sput-object v0, Lk1/m;->g:Lk1/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld1/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ln0/g;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lk1/c;->m:Lk1/c;

    sget-object v0, Lk1/l;->h:Lk1/i;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lk1/f;->r(Ljava/lang/Runnable;Lk1/i;Z)V

    return-void
.end method

.method public n(I)Ld1/a0;
    .locals 1

    .line 1
    invoke-static {p1}, Li1/p;->a(I)V

    sget v0, Lk1/l;->d:I

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Ld1/a0;->n(I)Ld1/a0;

    move-result-object p1

    return-object p1
.end method
