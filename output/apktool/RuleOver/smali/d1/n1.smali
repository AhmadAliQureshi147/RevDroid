.class final Ld1/n1;
.super Ld1/t1;
.source "SourceFile"


# instance fields
.field private final h:Ln0/d;


# direct methods
.method public constructor <init>(Ln0/g;Lv0/p;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ld1/t1;-><init>(Ln0/g;Z)V

    invoke-static {p2, p0, p0}, Lo0/b;->a(Lv0/p;Ljava/lang/Object;Ln0/d;)Ln0/d;

    move-result-object p1

    iput-object p1, p0, Ld1/n1;->h:Ln0/d;

    return-void
.end method


# virtual methods
.method protected q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/n1;->h:Ln0/d;

    invoke-static {v0, p0}, Lj1/a;->b(Ln0/d;Ln0/d;)V

    return-void
.end method
