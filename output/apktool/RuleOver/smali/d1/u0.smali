.class public abstract Ld1/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Li1/h0;

.field private static final b:Li1/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li1/h0;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld1/u0;->a:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld1/u0;->b:Li1/h0;

    return-void
.end method

.method public static final synthetic a()Li1/h0;
    .locals 1

    .line 1
    sget-object v0, Ld1/u0;->b:Li1/h0;

    return-object v0
.end method
