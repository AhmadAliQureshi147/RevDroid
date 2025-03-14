.class public final synthetic Lw/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw/u$c;


# instance fields
.field public final synthetic a:Lg0/i$d;


# direct methods
.method public synthetic constructor <init>(Lg0/i$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/h;->a:Lg0/i$d;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw/h;->a:Lg0/i$d;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lg0/i$d;->b(Ljava/lang/Object;)V

    return-void
.end method
