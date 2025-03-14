.class public final synthetic Lq/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/a;


# instance fields
.field public final synthetic a:Lf1/r;


# direct methods
.method public synthetic constructor <init>(Lf1/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq/h;->a:Lf1/r;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq/h;->a:Lf1/r;

    check-cast p1, Lq/j;

    invoke-static {v0, p1}, Lq/i$a;->m(Lf1/r;Lq/j;)V

    return-void
.end method
