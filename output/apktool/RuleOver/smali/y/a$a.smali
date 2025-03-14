.class Ly/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly/a;


# direct methods
.method constructor <init>(Ly/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly/a$a;->a:Ly/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;Lg0/b$b;)V
    .locals 1

    .line 1
    iget-object p2, p0, Ly/a$a;->a:Ly/a;

    sget-object v0, Lg0/o;->b:Lg0/o;

    invoke-virtual {v0, p1}, Lg0/o;->c(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ly/a;->b(Ly/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Ly/a$a;->a:Ly/a;

    invoke-static {p1}, Ly/a;->d(Ly/a;)Ly/a$d;

    return-void
.end method
