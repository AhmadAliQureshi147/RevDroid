.class public final Ld1/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic e:Ld1/b0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ld1/b0$a;

    invoke-direct {v0}, Ld1/b0$a;-><init>()V

    sput-object v0, Ld1/b0$a;->e:Ld1/b0$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
