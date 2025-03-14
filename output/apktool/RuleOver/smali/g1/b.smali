.class abstract Lg1/b;
.super Lh1/d;
.source "SourceFile"


# instance fields
.field private final d:Lv0/p;


# direct methods
.method public constructor <init>(Lv0/p;Ln0/g;ILf1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lh1/d;-><init>(Ln0/g;ILf1/a;)V

    iput-object p1, p0, Lg1/b;->d:Lv0/p;

    return-void
.end method

.method static synthetic j(Lg1/b;Lf1/r;Ln0/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lg1/b;->d:Lv0/p;

    invoke-interface {p0, p1, p2}, Lv0/p;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ll0/q;->a:Ll0/q;

    return-object p0
.end method


# virtual methods
.method protected e(Lf1/r;Ln0/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lg1/b;->j(Lg1/b;Lf1/r;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "block["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg1/b;->d:Lv0/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lh1/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
