.class public abstract Ld1/w0;
.super Ld1/a0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld1/w0$a;
    }
.end annotation


# static fields
.field public static final g:Ld1/w0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld1/w0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld1/w0$a;-><init>(Lw0/g;)V

    sput-object v0, Ld1/w0;->g:Ld1/w0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ld1/a0;-><init>()V

    return-void
.end method
