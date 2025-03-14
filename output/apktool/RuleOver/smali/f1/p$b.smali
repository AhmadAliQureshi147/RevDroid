.class final Lf1/p$b;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/p;->a(Lf1/r;Lv0/a;Ln0/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Ld1/j;


# direct methods
.method constructor <init>(Ld1/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/p$b;->f:Ld1/j;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lw0/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf1/p$b;->f:Ld1/j;

    sget-object v0, Ll0/k;->e:Ll0/k$a;

    sget-object v0, Ll0/q;->a:Ll0/q;

    invoke-static {v0}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ln0/d;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lf1/p$b;->a(Ljava/lang/Throwable;)V

    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method
