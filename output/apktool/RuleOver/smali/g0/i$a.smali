.class final Lg0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private final a:Lg0/i$c;

.field final synthetic b:Lg0/i;


# direct methods
.method constructor <init>(Lg0/i;Lg0/i$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg0/i$a;->b:Lg0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg0/i$a;->a:Lg0/i$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Lg0/b$b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lg0/i$a;->b:Lg0/i;

    invoke-static {v0}, Lg0/i;->a(Lg0/i;)Lg0/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lg0/j;->e(Ljava/nio/ByteBuffer;)Lg0/h;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lg0/i$a;->a:Lg0/i$c;

    new-instance v1, Lg0/i$a$a;

    invoke-direct {v1, p0, p2}, Lg0/i$a$a;-><init>(Lg0/i$a;Lg0/b$b;)V

    invoke-interface {v0, p1, v1}, Lg0/i$c;->a(Lg0/h;Lg0/i$d;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodChannel#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg0/i$a;->b:Lg0/i;

    invoke-static {v1}, Lg0/i;->b(Lg0/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to handle method call"

    invoke-static {v0, v1, p1}, Lx/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lg0/i$a;->b:Lg0/i;

    invoke-static {v0}, Lg0/i;->a(Lg0/i;)Lg0/j;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, Lx/b;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "error"

    invoke-interface {v0, v3, v1, v2, p1}, Lg0/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {p2, p1}, Lg0/b$b;->a(Ljava/nio/ByteBuffer;)V

    :goto_0
    return-void
.end method
