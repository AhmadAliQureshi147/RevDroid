.class public final Lq/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lq/m$a;

.field private static b:Lv0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq/m$a;

    invoke-direct {v0}, Lq/m$a;-><init>()V

    sput-object v0, Lq/m$a;->a:Lq/m$a;

    sget-object v0, Lq/m$a$a;->f:Lq/m$a$a;

    sput-object v0, Lq/m$a;->b:Lv0/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lq/m;
    .locals 2

    .line 1
    sget-object v0, Lq/m$a;->b:Lv0/l;

    sget-object v1, Lq/p;->b:Lq/p;

    invoke-interface {v0, v1}, Lv0/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/m;

    return-object v0
.end method
