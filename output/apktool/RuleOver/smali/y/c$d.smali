.class Ly/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field public final a:Lg0/b$a;

.field public final b:Ly/c$b;


# direct methods
.method constructor <init>(Lg0/b$a;Ly/c$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly/c$d;->a:Lg0/b$a;

    iput-object p2, p0, Ly/c$d;->b:Ly/c$b;

    return-void
.end method
