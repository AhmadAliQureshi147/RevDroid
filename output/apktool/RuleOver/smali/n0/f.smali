.class public abstract Ln0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lv0/p;Ljava/lang/Object;Ln0/d;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lo0/b;->a(Lv0/p;Ljava/lang/Object;Ln0/d;)Ln0/d;

    move-result-object p0

    invoke-static {p0}, Lo0/b;->b(Ln0/d;)Ln0/d;

    move-result-object p0

    sget-object p1, Ll0/k;->e:Ll0/k$a;

    sget-object p1, Ll0/q;->a:Ll0/q;

    invoke-static {p1}, Ll0/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ln0/d;->g(Ljava/lang/Object;)V

    return-void
.end method
