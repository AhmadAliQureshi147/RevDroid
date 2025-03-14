.class final Lg0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lg0/a$e;

.field final synthetic b:Lg0/a;


# direct methods
.method private constructor <init>(Lg0/a;Lg0/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg0/a$c;->b:Lg0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg0/a$c;->a:Lg0/a$e;

    return-void
.end method

.method synthetic constructor <init>(Lg0/a;Lg0/a$e;Lg0/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lg0/a$c;-><init>(Lg0/a;Lg0/a$e;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lg0/a$c;->a:Lg0/a$e;

    iget-object v1, p0, Lg0/a$c;->b:Lg0/a;

    invoke-static {v1}, Lg0/a;->a(Lg0/a;)Lg0/g;

    move-result-object v1

    invoke-interface {v1, p1}, Lg0/g;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lg0/a$e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicMessageChannel#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg0/a$c;->b:Lg0/a;

    invoke-static {v1}, Lg0/a;->b(Lg0/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to handle message reply"

    invoke-static {v0, v1, p1}, Lx/b;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
