.class Ly/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ly/c;


# direct methods
.method private constructor <init>(Ly/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/a$c;->a:Ly/c;

    return-void
.end method

.method synthetic constructor <init>(Ly/c;Ly/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ly/a$c;-><init>(Ly/c;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg0/b$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly/a$c;->a:Ly/c;

    invoke-virtual {v0, p1, p2, p3}, Ly/c;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;Lg0/b$b;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lg0/b$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly/a$c;->a:Ly/c;

    invoke-virtual {v0, p1, p2}, Ly/c;->c(Ljava/lang/String;Lg0/b$a;)V

    return-void
.end method
