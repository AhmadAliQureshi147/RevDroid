.class public abstract Lh1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li1/h0;

.field public static final b:Li1/h0;

.field public static final c:Li1/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li1/h0;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh1/i;->a:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh1/i;->b:Li1/h0;

    new-instance v0, Li1/h0;

    const-string v1, "DONE"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh1/i;->c:Li1/h0;

    return-void
.end method
