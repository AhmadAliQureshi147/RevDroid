.class Ld/a$a;
.super Ld/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/a;->m()Ld/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Ld/a;


# direct methods
.method constructor <init>(Ld/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld/a$a;->d:Ld/a;

    invoke-direct {p0}, Ld/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a$a;->d:Ld/a;

    invoke-virtual {v0}, Ld/d;->clear()V

    return-void
.end method

.method protected b(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a$a;->d:Ld/a;

    iget-object v0, v0, Ld/d;->f:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected c()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a$a;->d:Ld/a;

    return-object v0
.end method

.method protected d()I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a$a;->d:Ld/a;

    iget v0, v0, Ld/d;->g:I

    return v0
.end method

.method protected e(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a$a;->d:Ld/a;

    invoke-virtual {v0, p1}, Ld/d;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected f(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a$a;->d:Ld/a;

    invoke-virtual {v0, p1}, Ld/d;->h(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a$a;->d:Ld/a;

    invoke-virtual {v0, p1, p2}, Ld/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a$a;->d:Ld/a;

    invoke-virtual {v0, p1}, Ld/d;->j(I)Ljava/lang/Object;

    return-void
.end method

.method protected i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/a$a;->d:Ld/a;

    invoke-virtual {v0, p1, p2}, Ld/d;->k(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
