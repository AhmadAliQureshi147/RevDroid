.class final Lq/i$a$a;
.super Lw0/l;
.source "SourceFile"

# interfaces
.implements Lv0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq/i$a;->j(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lq/i;

.field final synthetic g:Lg/a;


# direct methods
.method constructor <init>(Lq/i;Lg/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq/i$a$a;->f:Lq/i;

    iput-object p2, p0, Lq/i$a$a;->g:Lg/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lw0/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq/i$a$a;->f:Lq/i;

    invoke-static {v0}, Lq/i;->b(Lq/i;)Lr/a;

    move-result-object v0

    iget-object v1, p0, Lq/i$a$a;->g:Lg/a;

    invoke-interface {v0, v1}, Lr/a;->a(Lg/a;)V

    return-void
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq/i$a$a;->a()V

    sget-object v0, Ll0/q;->a:Ll0/q;

    return-object v0
.end method
