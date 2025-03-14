.class public abstract Ln0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/g$c;


# instance fields
.field private final e:Lv0/l;

.field private final f:Ln0/g$c;


# direct methods
.method public constructor <init>(Ln0/g$c;Lv0/l;)V
    .locals 1

    .line 1
    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ln0/b;->e:Lv0/l;

    instance-of p2, p1, Ln0/b;

    if-eqz p2, :cond_0

    check-cast p1, Ln0/b;

    iget-object p1, p1, Ln0/b;->f:Ln0/g$c;

    :cond_0
    iput-object p1, p0, Ln0/b;->f:Ln0/g$c;

    return-void
.end method


# virtual methods
.method public final a(Ln0/g$c;)Z
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p1, p0, :cond_1

    iget-object v0, p0, Ln0/b;->f:Ln0/g$c;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b(Ln0/g$b;)Ln0/g$b;
    .locals 1

    .line 1
    const-string v0, "element"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln0/b;->e:Lv0/l;

    invoke-interface {v0, p1}, Lv0/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/g$b;

    return-object p1
.end method
