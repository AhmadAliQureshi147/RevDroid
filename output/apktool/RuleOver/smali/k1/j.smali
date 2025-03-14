.class final Lk1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/i;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk1/j;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lk1/j;->a:I

    return v0
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method
