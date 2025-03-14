.class public Lf0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/r$b;
    }
.end annotation


# instance fields
.field public final a:Lg0/i;

.field public final b:Landroid/content/pm/PackageManager;

.field private c:Lf0/r$b;

.field public final d:Lg0/i$c;


# direct methods
.method public constructor <init>(Ly/a;Landroid/content/pm/PackageManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf0/r$a;

    invoke-direct {v0, p0}, Lf0/r$a;-><init>(Lf0/r;)V

    iput-object v0, p0, Lf0/r;->d:Lg0/i$c;

    iput-object p2, p0, Lf0/r;->b:Landroid/content/pm/PackageManager;

    new-instance p2, Lg0/i;

    const-string v1, "flutter/processtext"

    sget-object v2, Lg0/n;->b:Lg0/n;

    invoke-direct {p2, p1, v1, v2}, Lg0/i;-><init>(Lg0/b;Ljava/lang/String;Lg0/j;)V

    iput-object p2, p0, Lf0/r;->a:Lg0/i;

    invoke-virtual {p2, v0}, Lg0/i;->e(Lg0/i$c;)V

    return-void
.end method

.method static synthetic a(Lf0/r;)Lf0/r$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lf0/r;->c:Lf0/r$b;

    return-object p0
.end method


# virtual methods
.method public b(Lf0/r$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/r;->c:Lf0/r$b;

    return-void
.end method
