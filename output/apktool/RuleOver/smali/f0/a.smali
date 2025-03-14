.class public Lf0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/a$b;
    }
.end annotation


# instance fields
.field public final a:Lg0/a;

.field public final b:Lio/flutter/embedding/engine/FlutterJNI;

.field private c:Lf0/a$b;

.field public final d:Lg0/a$d;


# direct methods
.method public constructor <init>(Ly/a;Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf0/a$a;

    invoke-direct {v0, p0}, Lf0/a$a;-><init>(Lf0/a;)V

    iput-object v0, p0, Lf0/a;->d:Lg0/a$d;

    new-instance v1, Lg0/a;

    const-string v2, "flutter/accessibility"

    sget-object v3, Lg0/m;->a:Lg0/m;

    invoke-direct {v1, p1, v2, v3}, Lg0/a;-><init>(Lg0/b;Ljava/lang/String;Lg0/g;)V

    iput-object v1, p0, Lf0/a;->a:Lg0/a;

    invoke-virtual {v1, v0}, Lg0/a;->e(Lg0/a$d;)V

    iput-object p2, p0, Lf0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
.end method

.method static synthetic a(Lf0/a;)Lf0/a$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lf0/a;->c:Lf0/a$b;

    return-object p0
.end method


# virtual methods
.method public b(ILio/flutter/view/l$g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/l$g;)V

    return-void
.end method

.method public c(ILio/flutter/view/l$g;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchSemanticsAction(ILio/flutter/view/l$g;Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setSemanticsEnabled(Z)V

    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityFeatures(I)V

    return-void
.end method

.method public g(Lf0/a$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lf0/a;->c:Lf0/a$b;

    iget-object v0, p0, Lf0/a;->b:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setAccessibilityDelegate(Lio/flutter/embedding/engine/FlutterJNI$a;)V

    return-void
.end method
