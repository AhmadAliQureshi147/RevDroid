.class public abstract Ln0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/g$b;


# instance fields
.field private final e:Ln0/g$c;


# direct methods
.method public constructor <init>(Ln0/g$c;)V
    .locals 1

    .line 1
    const-string v0, "key"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/a;->e:Ln0/g$c;

    return-void
.end method


# virtual methods
.method public a(Ln0/g$c;)Ln0/g$b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ln0/g$b$a;->b(Ln0/g$b;Ln0/g$c;)Ln0/g$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ln0/g$c;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/a;->e:Ln0/g$c;

    return-object v0
.end method

.method public l(Ln0/g$c;)Ln0/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ln0/g$b$a;->c(Ln0/g$b;Ln0/g$c;)Ln0/g;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ln0/g$b$a;->a(Ln0/g$b;Ljava/lang/Object;Lv0/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public u(Ln0/g;)Ln0/g;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ln0/g$b$a;->d(Ln0/g$b;Ln0/g;)Ln0/g;

    move-result-object p1

    return-object p1
.end method
