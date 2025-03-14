.class public abstract Ld1/a2;
.super Ln0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/a2$a;
    }
.end annotation


# static fields
.field public static final f:Ld1/a2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld1/a2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld1/a2$a;-><init>(Lw0/g;)V

    sput-object v0, Ld1/a2;->f:Ld1/a2$a;

    return-void
.end method
