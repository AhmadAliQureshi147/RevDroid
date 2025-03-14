.class Lc/b$a;
.super Lc/b$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Lc/b$c;Lc/b$c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/b$e;-><init>(Lc/b$c;Lc/b$c;)V

    return-void
.end method


# virtual methods
.method a(Lc/b$c;)Lc/b$c;
    .locals 0

    .line 1
    iget-object p1, p1, Lc/b$c;->c:Lc/b$c;

    return-object p1
.end method
