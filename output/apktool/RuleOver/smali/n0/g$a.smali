.class public abstract Ln0/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ln0/g;Ln0/g;)Ln0/g;
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ln0/h;->e:Ln0/h;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ln0/g$a$a;->f:Ln0/g$a$a;

    invoke-interface {p1, p0, v0}, Ln0/g;->m(Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln0/g;

    :goto_0
    return-object p0
.end method
