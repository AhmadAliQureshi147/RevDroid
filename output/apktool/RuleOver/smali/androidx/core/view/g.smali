.class public abstract Landroidx/core/view/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/g$f;,
        Landroidx/core/view/g$d;,
        Landroidx/core/view/g$c;,
        Landroidx/core/view/g$e;,
        Landroidx/core/view/g$g;,
        Landroidx/core/view/g$b;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Landroidx/core/view/d;

.field private static final c:Landroidx/core/view/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Le/a;->a:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Le/a;->b:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Le/a;->m:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Le/a;->x:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Le/a;->A:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Le/a;->B:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Le/a;->C:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Le/a;->D:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Le/a;->E:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Le/a;->F:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Le/a;->c:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Le/a;->d:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Le/a;->e:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Le/a;->f:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Le/a;->g:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Le/a;->h:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Le/a;->i:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Le/a;->j:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Le/a;->k:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Le/a;->l:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Le/a;->n:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Le/a;->o:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Le/a;->p:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Le/a;->q:I

    aput v2, v0, v1

    const/16 v1, 0x18

    sget v2, Le/a;->r:I

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Le/a;->s:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Le/a;->t:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    sget v2, Le/a;->u:I

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Le/a;->v:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Le/a;->w:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    sget v2, Le/a;->y:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Le/a;->z:I

    aput v2, v0, v1

    sput-object v0, Landroidx/core/view/g;->a:[I

    new-instance v0, Landroidx/core/view/f;

    invoke-direct {v0}, Landroidx/core/view/f;-><init>()V

    sput-object v0, Landroidx/core/view/g;->b:Landroidx/core/view/d;

    new-instance v0, Landroidx/core/view/g$b;

    invoke-direct {v0}, Landroidx/core/view/g$b;-><init>()V

    sput-object v0, Landroidx/core/view/g;->c:Landroidx/core/view/g$b;

    return-void
.end method

.method public static a(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/core/view/g;->d()Landroidx/core/view/g$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/core/view/g$c;->c(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static b(Landroid/view/View;)Landroidx/core/view/i;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/core/view/g$e;->a(Landroid/view/View;)Landroidx/core/view/i;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroidx/core/view/g$d;->j(Landroid/view/View;)Landroidx/core/view/i;

    move-result-object p0

    return-object p0
.end method

.method static c(Landroid/view/View;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/core/view/g;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityLiveRegion()I

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_4

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-ne p1, v3, :cond_3

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/view/g;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p0, p0, p1}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not fully implement ViewParent"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ViewCompat"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    :goto_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v3, 0x800

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    invoke-static {p0}, Landroidx/core/view/g;->a(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Landroidx/core/view/g;->e(Landroid/view/View;)V

    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private static d()Landroidx/core/view/g$c;
    .locals 5

    .line 1
    new-instance v0, Landroidx/core/view/g$a;

    sget v1, Le/a;->G:I

    const/16 v2, 0x8

    const/16 v3, 0x1c

    const-class v4, Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v4, v2, v3}, Landroidx/core/view/g$a;-><init>(ILjava/lang/Class;II)V

    return-object v0
.end method

.method private static e(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method
