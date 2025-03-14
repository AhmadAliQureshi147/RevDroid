.class Lg0/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/i$a;->a(Ljava/nio/ByteBuffer;Lg0/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg0/b$b;

.field final synthetic b:Lg0/i$a;


# direct methods
.method constructor <init>(Lg0/i$a;Lg0/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg0/i$a$a;->b:Lg0/i$a;

    iput-object p2, p0, Lg0/i$a$a;->a:Lg0/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/i$a$a;->a:Lg0/b$b;

    iget-object v1, p0, Lg0/i$a$a;->b:Lg0/i$a;

    iget-object v1, v1, Lg0/i$a;->b:Lg0/i;

    invoke-static {v1}, Lg0/i;->a(Lg0/i;)Lg0/j;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lg0/j;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Lg0/b$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/i$a$a;->a:Lg0/b$b;

    iget-object v1, p0, Lg0/i$a$a;->b:Lg0/i$a;

    iget-object v1, v1, Lg0/i$a;->b:Lg0/i;

    invoke-static {v1}, Lg0/i;->a(Lg0/i;)Lg0/j;

    move-result-object v1

    invoke-interface {v1, p1}, Lg0/j;->d(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Lg0/b$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/i$a$a;->a:Lg0/b$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lg0/b$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method
