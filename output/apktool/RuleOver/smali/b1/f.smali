.class abstract Lb1/f;
.super Lb1/e;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Iterator;)Lb1/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb1/f$a;

    invoke-direct {v0, p0}, Lb1/f$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lb1/f;->b(Lb1/b;)Lb1/b;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lb1/b;)Lb1/b;
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lb1/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lb1/a;

    invoke-direct {v0, p0}, Lb1/a;-><init>(Lb1/b;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
