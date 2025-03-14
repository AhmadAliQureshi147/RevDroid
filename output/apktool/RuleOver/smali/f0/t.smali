.class public Lf0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/t$a;,
        Lf0/t$b;,
        Lf0/t$c;
    }
.end annotation


# static fields
.field private static final b:Lf0/t$a;


# instance fields
.field public final a:Lg0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf0/t$a;

    invoke-direct {v0}, Lf0/t$a;-><init>()V

    sput-object v0, Lf0/t;->b:Lf0/t$a;

    return-void
.end method

.method public constructor <init>(Ly/a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg0/a;

    const-string v1, "flutter/settings"

    sget-object v2, Lg0/d;->a:Lg0/d;

    invoke-direct {v0, p1, v1, v2}, Lg0/a;-><init>(Lg0/b;Ljava/lang/String;Lg0/g;)V

    iput-object v0, p0, Lf0/t;->a:Lg0/a;

    return-void
.end method

.method static synthetic a()Lf0/t$a;
    .locals 1

    .line 1
    sget-object v0, Lf0/t;->b:Lf0/t$a;

    return-object v0
.end method

.method public static b(I)Landroid/util/DisplayMetrics;
    .locals 1

    .line 1
    sget-object v0, Lf0/t;->b:Lf0/t$a;

    invoke-virtual {v0, p0}, Lf0/t$a;->c(I)Lf0/t$a$b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lf0/t$a$b;->a(Lf0/t$a$b;)Landroid/util/DisplayMetrics;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public d()Lf0/t$b;
    .locals 2

    .line 1
    new-instance v0, Lf0/t$b;

    iget-object v1, p0, Lf0/t;->a:Lg0/a;

    invoke-direct {v0, v1}, Lf0/t$b;-><init>(Lg0/a;)V

    return-object v0
.end method
