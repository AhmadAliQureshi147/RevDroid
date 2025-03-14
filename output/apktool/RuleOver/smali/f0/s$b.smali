.class Lf0/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf0/s;


# direct methods
.method constructor <init>(Lf0/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/s$b;->a:Lf0/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg0/h;Lg0/i$d;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lg0/h;->a:Ljava/lang/String;

    iget-object p1, p1, Lg0/h;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "put"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lg0/i$d;->c()V

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lf0/s$b;->a:Lf0/s;

    check-cast p1, [B

    invoke-static {v0, p1}, Lf0/s;->b(Lf0/s;[B)[B

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2, p1}, Lg0/i$d;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lf0/s$b;->a:Lf0/s;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lf0/s;->c(Lf0/s;Z)Z

    iget-object p1, p0, Lf0/s$b;->a:Lf0/s;

    invoke-static {p1}, Lf0/s;->d(Lf0/s;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lf0/s$b;->a:Lf0/s;

    iget-boolean v0, p1, Lf0/s;->a:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Lf0/s;->f(Lf0/s;Lg0/i$d;)Lg0/i$d;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lf0/s$b;->a:Lf0/s;

    invoke-static {p1}, Lf0/s;->a(Lf0/s;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lf0/s;->e(Lf0/s;[B)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :goto_2
    return-void
.end method
