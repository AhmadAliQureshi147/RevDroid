.class public final Ln/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln/d;->c(Ljava/lang/Object;La1/b;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lv0/l;)Ln/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Method;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln/d$c;->a:Ljava/lang/reflect/Method;

    iput-object p2, p0, Ln/d$c;->b:Ljava/lang/Object;

    iput-object p3, p0, Ln/d$c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln/d$c;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Ln/d$c;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Ln/d$c;->c:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
