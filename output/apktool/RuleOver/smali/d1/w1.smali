.class public final Ld1/w1;
.super Ld1/a0;
.source "SourceFile"


# static fields
.field public static final g:Ld1/w1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld1/w1;

    invoke-direct {v0}, Ld1/w1;-><init>()V

    sput-object v0, Ld1/w1;->g:Ld1/w1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld1/a0;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ln0/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    sget-object p2, Ld1/a2;->f:Ld1/a2$a;

    invoke-interface {p1, p2}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/n;->a(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public h(Ln0/g;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.Unconfined"

    return-object v0
.end method
