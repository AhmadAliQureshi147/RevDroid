.class public final Lq/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq/c$b$a;
    }
.end annotation


# static fields
.field public static final b:Lq/c$b$a;

.field public static final c:Lq/c$b;

.field public static final d:Lq/c$b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq/c$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq/c$b$a;-><init>(Lw0/g;)V

    sput-object v0, Lq/c$b;->b:Lq/c$b$a;

    new-instance v0, Lq/c$b;

    const-string v1, "FLAT"

    invoke-direct {v0, v1}, Lq/c$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq/c$b;->c:Lq/c$b;

    new-instance v0, Lq/c$b;

    const-string v1, "HALF_OPENED"

    invoke-direct {v0, v1}, Lq/c$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq/c$b;->d:Lq/c$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/c$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/c$b;->a:Ljava/lang/String;

    return-object v0
.end method
