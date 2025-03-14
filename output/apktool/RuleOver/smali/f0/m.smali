.class public Lf0/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/m$b;
    }
.end annotation


# instance fields
.field public final a:Lg0/i;

.field private b:Lf0/m$b;

.field private final c:Lg0/i$c;


# direct methods
.method public constructor <init>(Ly/a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf0/m$a;

    invoke-direct {v0, p0}, Lf0/m$a;-><init>(Lf0/m;)V

    iput-object v0, p0, Lf0/m;->c:Lg0/i$c;

    new-instance v1, Lg0/i;

    const-string v2, "flutter/mousecursor"

    sget-object v3, Lg0/n;->b:Lg0/n;

    invoke-direct {v1, p1, v2, v3}, Lg0/i;-><init>(Lg0/b;Ljava/lang/String;Lg0/j;)V

    iput-object v1, p0, Lf0/m;->a:Lg0/i;

    invoke-virtual {v1, v0}, Lg0/i;->e(Lg0/i$c;)V

    return-void
.end method

.method static synthetic a(Lf0/m;)Lf0/m$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lf0/m;->b:Lf0/m$b;

    return-object p0
.end method


# virtual methods
.method public b(Lf0/m$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/m;->b:Lf0/m$b;

    return-void
.end method
