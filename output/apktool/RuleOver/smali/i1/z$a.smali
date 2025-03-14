.class final Li1/z$a;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/z;->a(Lv0/l;Ljava/lang/Object;Ln0/g;)Lv0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lv0/l;

.field final synthetic g:Ljava/lang/Object;

.field final synthetic h:Ln0/g;


# direct methods
.method constructor <init>(Lv0/l;Ljava/lang/Object;Ln0/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/z$a;->f:Lv0/l;

    iput-object p2, p0, Li1/z$a;->g:Ljava/lang/Object;

    iput-object p3, p0, Li1/z$a;->h:Ln0/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lw0/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Li1/z$a;->f:Lv0/l;

    iget-object v0, p0, Li1/z$a;->g:Ljava/lang/Object;

    iget-object v1, p0, Li1/z$a;->h:Ln0/g;

    invoke-static {p1, v0, v1}, Li1/z;->b(Lv0/l;Ljava/lang/Object;Ln0/g;)V

    return-void
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Li1/z$a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method
