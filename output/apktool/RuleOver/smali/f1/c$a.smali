.class final synthetic Lf1/c$a;
.super Lw0/j;
.source "SourceFile"

# interfaces
.implements Lv0/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf1/c;->y()La1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# static fields
.field public static final n:Lf1/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf1/c$a;

    invoke-direct {v0}, Lf1/c$a;-><init>()V

    sput-object v0, Lf1/c$a;->n:Lf1/c$a;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .line 1
    const/4 v1, 0x2

    const-class v2, Lf1/c;

    const-string v3, "createSegment"

    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lw0/j;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Lf1/j;

    invoke-virtual {p0, v0, v1, p2}, Lf1/c$a;->k(JLf1/j;)Lf1/j;

    move-result-object p1

    return-object p1
.end method

.method public final k(JLf1/j;)Lf1/j;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lf1/c;->c(JLf1/j;)Lf1/j;

    move-result-object p1

    return-object p1
.end method
