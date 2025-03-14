.class public abstract Ld1/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li1/h0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li1/h0;

    const-string v1, "RESUME_TOKEN"

    invoke-direct {v0, v1}, Li1/h0;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld1/l;->a:Li1/h0;

    return-void
.end method
