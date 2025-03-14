.class final Ld1/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/g$b;
.implements Ln0/g$c;


# static fields
.field public static final e:Ld1/y1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld1/y1;

    invoke-direct {v0}, Ld1/y1;-><init>()V

    sput-object v0, Ld1/y1;->e:Ld1/y1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 0

    .line 1
    return-object p0
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
