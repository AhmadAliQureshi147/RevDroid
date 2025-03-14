.class Lf0/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/i$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf0/n;


# direct methods
.method constructor <init>(Lf0/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/n$a;->a:Lf0/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg0/h;Lg0/i$d;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    invoke-interface {p2, p1}, Lg0/i$d;->b(Ljava/lang/Object;)V

    return-void
.end method
