.class public final Lh1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/d;


# instance fields
.field private final a:Lf1/t;


# direct methods
.method public constructor <init>(Lf1/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/j;->a:Lf1/t;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lh1/j;->a:Lf1/t;

    invoke-interface {v0, p1, p2}, Lf1/t;->n(Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lo0/b;->c()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method
