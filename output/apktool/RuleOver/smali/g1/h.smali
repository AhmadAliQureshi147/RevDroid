.class abstract synthetic Lg1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(Ln0/g;)V
    .locals 2

    .line 1
    sget-object v0, Ld1/e1;->b:Ld1/e1$b;

    invoke-interface {p0, v0}, Ln0/g;->a(Ln0/g$c;)Ln0/g$b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flow context cannot contain job in it. Had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Lg1/c;Ln0/g;)Lg1/c;
    .locals 8

    .line 1
    invoke-static {p1}, Lg1/h;->a(Ln0/g;)V

    sget-object v0, Ln0/h;->e:Ln0/h;

    invoke-static {p1, v0}, Lw0/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lh1/h;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lh1/h;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lh1/h$a;->a(Lh1/h;Ln0/g;ILf1/a;ILjava/lang/Object;)Lg1/c;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v7, Lh1/g;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lh1/g;-><init>(Lg1/c;Ln0/g;ILf1/a;ILw0/g;)V

    move-object p0, v7

    :goto_0
    return-object p0
.end method
