.class final Lo/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/a$a;->j(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/a;


# direct methods
.method constructor <init>(Lg/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/a$a$a;->a:Lg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ln0/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lo/a$a$a;->a:Lg/a;

    invoke-interface {p2, p1}, Lg/a;->accept(Ljava/lang/Object;)V

    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method
