.class final Ld1/z$c;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld1/z;->c(Ln0/g;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final f:Ld1/z$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld1/z$c;

    invoke-direct {v0}, Ld1/z$c;-><init>()V

    sput-object v0, Ld1/z$c;->f:Ld1/z$c;

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
.method public final a(ZLn0/g$b;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ln0/g$b;

    invoke-virtual {p0, p1, p2}, Ld1/z$c;->a(ZLn0/g$b;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
