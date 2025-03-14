.class public final Lq/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/d$b$a;
    }
.end annotation


# static fields
.field public static final b:Lq/d$b$a;

.field private static final c:Lq/d$b;

.field private static final d:Lq/d$b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq/d$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq/d$b$a;-><init>(Lw0/g;)V

    sput-object v0, Lq/d$b;->b:Lq/d$b$a;

    new-instance v0, Lq/d$b;

    const-string v1, "FOLD"

    invoke-direct {v0, v1}, Lq/d$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq/d$b;->c:Lq/d$b;

    new-instance v0, Lq/d$b;

    const-string v1, "HINGE"

    invoke-direct {v0, v1}, Lq/d$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq/d$b;->d:Lq/d$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/d$b;->a:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a()Lq/d$b;
    .locals 1

    .line 1
    sget-object v0, Lq/d$b;->c:Lq/d$b;

    return-object v0
.end method

.method public static final synthetic b()Lq/d$b;
    .locals 1

    .line 1
    sget-object v0, Lq/d$b;->d:Lq/d$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/d$b;->a:Ljava/lang/String;

    return-object v0
.end method
