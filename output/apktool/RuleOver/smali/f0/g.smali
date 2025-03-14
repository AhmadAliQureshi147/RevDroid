.class public Lf0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg0/i;

.field private b:Ljava/util/Map;

.field final c:Lg0/i$c;


# direct methods
.method public constructor <init>(Ly/a;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf0/g$a;

    invoke-direct {v0, p0}, Lf0/g$a;-><init>(Lf0/g;)V

    iput-object v0, p0, Lf0/g;->c:Lg0/i$c;

    new-instance v1, Lg0/i;

    const-string v2, "flutter/deferredcomponent"

    sget-object v3, Lg0/n;->b:Lg0/n;

    invoke-direct {v1, p1, v2, v3}, Lg0/i;-><init>(Lg0/b;Ljava/lang/String;Lg0/j;)V

    iput-object v1, p0, Lf0/g;->a:Lg0/i;

    invoke-virtual {v1, v0}, Lg0/i;->e(Lg0/i$c;)V

    invoke-static {}, Lx/a;->e()Lx/a;

    move-result-object p1

    invoke-virtual {p1}, Lx/a;->a()Lz/a;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lf0/g;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lf0/g;)Lz/a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method
