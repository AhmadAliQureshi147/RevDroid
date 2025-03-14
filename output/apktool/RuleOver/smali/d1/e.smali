.class public final Ld1/e;
.super Ld1/r0;
.source "SourceFile"


# instance fields
.field private final m:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld1/r0;-><init>()V

    iput-object p1, p0, Ld1/e;->m:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected E()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/e;->m:Ljava/lang/Thread;

    return-object v0
.end method
