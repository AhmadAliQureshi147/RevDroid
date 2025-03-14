.class final Lg0/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final a:Lg0/i$d;

.field final synthetic b:Lg0/i;


# direct methods
.method constructor <init>(Lg0/i;Lg0/i$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg0/i$b;->b:Lg0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg0/i$b;->a:Lg0/i$d;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lg0/i$b;->a:Lg0/i$d;

    invoke-interface {p1}, Lg0/i$d;->c()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lg0/i$b;->a:Lg0/i$d;

    iget-object v1, p0, Lg0/i$b;->b:Lg0/i;

    invoke-static {v1}, Lg0/i;->a(Lg0/i;)Lg0/j;

    move-result-object v1

    invoke-interface {v1, p1}, Lg0/j;->f(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lg0/i$d;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Lg0/c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_2
    iget-object v0, p0, Lg0/i$b;->a:Lg0/i$d;

    iget-object v1, p1, Lg0/c;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lg0/c;->f:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lg0/i$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodChannel#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg0/i$b;->b:Lg0/i;

    invoke-static {v1}, Lg0/i;->b(Lg0/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to handle method call result"

    invoke-static {v0, v1, p1}, Lx/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
