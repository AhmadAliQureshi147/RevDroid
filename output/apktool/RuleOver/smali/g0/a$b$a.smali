.class Lg0/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg0/a$b;->a(Ljava/nio/ByteBuffer;Lg0/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg0/b$b;

.field final synthetic b:Lg0/a$b;


# direct methods
.method constructor <init>(Lg0/a$b;Lg0/b$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg0/a$b$a;->b:Lg0/a$b;

    iput-object p2, p0, Lg0/a$b$a;->a:Lg0/b$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg0/a$b$a;->a:Lg0/b$b;

    iget-object v1, p0, Lg0/a$b$a;->b:Lg0/a$b;

    iget-object v1, v1, Lg0/a$b;->b:Lg0/a;

    invoke-static {v1}, Lg0/a;->a(Lg0/a;)Lg0/g;

    move-result-object v1

    invoke-interface {v1, p1}, Lg0/g;->b(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-interface {v0, p1}, Lg0/b$b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method
