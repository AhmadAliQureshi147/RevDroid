.class final Lh1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/d;


# instance fields
.field private final a:Ln0/g;

.field private final b:Ljava/lang/Object;

.field private final c:Lv0/p;


# direct methods
.method public constructor <init>(Lg1/d;Ln0/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh1/l;->a:Ln0/g;

    invoke-static {p2}, Li1/l0;->b(Ln0/g;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lh1/l;->b:Ljava/lang/Object;

    new-instance p2, Lh1/l$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lh1/l$a;-><init>(Lg1/d;Ln0/d;)V

    iput-object p2, p0, Lh1/l;->c:Lv0/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lh1/l;->a:Ln0/g;

    iget-object v1, p0, Lh1/l;->b:Ljava/lang/Object;

    iget-object v2, p0, Lh1/l;->c:Lv0/p;

    invoke-static {v0, p1, v1, v2, p2}, Lh1/e;->b(Ln0/g;Ljava/lang/Object;Ljava/lang/Object;Lv0/p;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method
