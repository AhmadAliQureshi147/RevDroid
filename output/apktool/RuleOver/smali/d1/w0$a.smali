.class public final Ld1/w0$a;
.super Ln0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Ld1/a0;->f:Ld1/a0$a;

    sget-object v1, Ld1/w0$a$a;->f:Ld1/w0$a$a;

    invoke-direct {p0, v0, v1}, Ln0/b;-><init>(Ln0/g$c;Lv0/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lw0/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ld1/w0$a;-><init>()V

    return-void
.end method
