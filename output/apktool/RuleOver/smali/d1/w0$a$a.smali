.class final Ld1/w0$a$a;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld1/w0$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final f:Ld1/w0$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld1/w0$a$a;

    invoke-direct {v0}, Ld1/w0$a$a;-><init>()V

    sput-object v0, Ld1/w0$a$a;->f:Ld1/w0$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lw0/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ln0/g$b;)Ld1/w0;
    .locals 1

    .line 1
    instance-of v0, p1, Ld1/w0;

    if-eqz v0, :cond_0

    check-cast p1, Ld1/w0;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ln0/g$b;

    invoke-virtual {p0, p1}, Ld1/w0$a$a;->a(Ln0/g$b;)Ld1/w0;

    move-result-object p1

    return-object p1
.end method
