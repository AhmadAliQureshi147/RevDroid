.class final Ld1/z$a;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld1/z;->a(Ln0/g;Ln0/g;Z)Ln0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final f:Ld1/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld1/z$a;

    invoke-direct {v0}, Ld1/z$a;-><init>()V

    sput-object v0, Ld1/z$a;->f:Ld1/z$a;

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
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Ln0/g;->u(Ln0/g;)Ln0/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ln0/g;

    check-cast p2, Ln0/g$b;

    invoke-virtual {p0, p1, p2}, Ld1/z$a;->a(Ln0/g;Ln0/g$b;)Ln0/g;

    move-result-object p1

    return-object p1
.end method
