.class final Lq/m$a$a;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final f:Lq/m$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq/m$a$a;

    invoke-direct {v0}, Lq/m$a$a;-><init>()V

    sput-object v0, Lq/m$a$a;->f:Lq/m$a$a;

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
.method public final a(Lq/m;)Lq/m;
    .locals 1

    .line 1
    const-string v0, "it"

    invoke-static {p1, v0}, Lw0/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lq/m;

    invoke-virtual {p0, p1}, Lq/m$a$a;->a(Lq/m;)Lq/m;

    move-result-object p1

    return-object p1
.end method
