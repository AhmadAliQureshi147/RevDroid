.class Li0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf0/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li0/b;-><init>(Li0/b$c;Lf0/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li0/b;


# direct methods
.method constructor <init>(Li0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li0/b$a;->a:Li0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li0/b$a;->a:Li0/b;

    invoke-static {v0}, Li0/b;->b(Li0/b;)Li0/b$c;

    move-result-object v0

    iget-object v1, p0, Li0/b$a;->a:Li0/b;

    invoke-static {v1, p1}, Li0/b;->a(Li0/b;Ljava/lang/String;)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-interface {v0, p1}, Li0/b$c;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method
