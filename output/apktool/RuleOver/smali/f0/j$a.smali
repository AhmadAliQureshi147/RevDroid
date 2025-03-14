.class Lf0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Ljava/util/Map;

.field final synthetic b:Lf0/j;


# direct methods
.method constructor <init>(Lf0/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/j$a;->b:Lf0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lf0/j$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lg0/h;Lg0/i$d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/j$a;->b:Lf0/j;

    invoke-static {v0}, Lf0/j;->a(Lf0/j;)Lf0/j$b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    iget-object p1, p0, Lf0/j$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Lg0/i$d;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lg0/h;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "getKeyboardState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2}, Lg0/i$d;->c()V

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object p1, p0, Lf0/j$a;->b:Lf0/j;

    invoke-static {p1}, Lf0/j;->a(Lf0/j;)Lf0/j$b;

    move-result-object p1

    invoke-interface {p1}, Lf0/j$b;->b()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lf0/j$a;->a:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "error"

    invoke-interface {p2, v1, p1, v0}, Lg0/i$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    return-void
.end method
