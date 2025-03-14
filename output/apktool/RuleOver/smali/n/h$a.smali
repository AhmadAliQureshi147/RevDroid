.class public final Ln/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lw0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln/h$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Ln/h$a;Ljava/lang/Object;Ljava/lang/String;Ln/j;Ln/g;ILjava/lang/Object;)Ln/h;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p3, Ln/c;->a:Ln/c;

    invoke-virtual {p3}, Ln/c;->a()Ln/j;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    sget-object p4, Ln/a;->a:Ln/a;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Ln/h$a;->a(Ljava/lang/Object;Ljava/lang/String;Ln/j;Ln/g;)Ln/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;Ln/j;Ln/g;)Ln/h;
    .locals 1

    .line 1
    const-string v0, "<this>"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p3, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln/i;

    invoke-direct {v0, p1, p2, p3, p4}, Ln/i;-><init>(Ljava/lang/Object;Ljava/lang/String;Ln/j;Ln/g;)V

    return-object v0
.end method
