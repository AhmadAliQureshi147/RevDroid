.class final Ln/i;
.super Ln/h;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/String;

.field private final d:Ln/j;

.field private final e:Ln/g;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ln/j;Ln/g;)V
    .locals 1

    .line 1
    const-string v0, "value"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p3, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ln/h;-><init>()V

    iput-object p1, p0, Ln/i;->b:Ljava/lang/Object;

    iput-object p2, p0, Ln/i;->c:Ljava/lang/String;

    iput-object p3, p0, Ln/i;->d:Ln/j;

    iput-object p4, p0, Ln/i;->e:Ln/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln/i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/String;Lv0/l;)Ln/h;
    .locals 6

    .line 1
    const-string v0, "message"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "condition"

    invoke-static {p2, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln/i;->b:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lv0/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    move-object p2, p0

    goto :goto_0

    :cond_0
    new-instance p2, Ln/f;

    iget-object v1, p0, Ln/i;->b:Ljava/lang/Object;

    iget-object v2, p0, Ln/i;->c:Ljava/lang/String;

    iget-object v4, p0, Ln/i;->e:Ln/g;

    iget-object v5, p0, Ln/i;->d:Ln/j;

    move-object v0, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ln/f;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ln/g;Ln/j;)V

    :goto_0
    return-object p2
.end method
