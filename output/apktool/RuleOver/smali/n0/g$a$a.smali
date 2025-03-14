.class final Ln0/g$a$a;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/g$a;->a(Ln0/g;Ln0/g;)Ln0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final f:Ln0/g$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln0/g$a$a;

    invoke-direct {v0}, Ln0/g$a$a;-><init>()V

    sput-object v0, Ln0/g$a$a;->f:Ln0/g$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lw0/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ln0/g;Ln0/g$b;)Ln0/g;
    .locals 3

    .line 1
    const-string v0, "acc"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ln0/g$b;->getKey()Ln0/g$c;

    move-result-object v0

    invoke-interface {p1, v0}, Ln0/g;->l(Ln0/g$c;)Ln0/g;

    move-result-object p1

    sget-object v0, Ln0/h;->e:Ln0/h;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Ln0/e;->d:Ln0/e$b;

    invoke-interface {p1, v1}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object v2

    check-cast v2, Ln0/e;

    if-nez v2, :cond_1

    new-instance v0, Ln0/c;

    invoke-direct {v0, p1, p2}, Ln0/c;-><init>(Ln0/g;Ln0/g$b;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Ln0/g;->l(Ln0/g$c;)Ln0/g;

    move-result-object p1

    if-ne p1, v0, :cond_2

    new-instance p1, Ln0/c;

    invoke-direct {p1, p2, v2}, Ln0/c;-><init>(Ln0/g;Ln0/g$b;)V

    move-object p2, p1

    goto :goto_1

    :cond_2
    new-instance v0, Ln0/c;

    new-instance v1, Ln0/c;

    invoke-direct {v1, p1, p2}, Ln0/c;-><init>(Ln0/g;Ln0/g$b;)V

    invoke-direct {v0, v1, v2}, Ln0/c;-><init>(Ln0/g;Ln0/g$b;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ln0/g;

    check-cast p2, Ln0/g$b;

    invoke-virtual {p0, p1, p2}, Ln0/g$a$a;->a(Ln0/g;Ln0/g$b;)Ln0/g;

    move-result-object p1

    return-object p1
.end method
