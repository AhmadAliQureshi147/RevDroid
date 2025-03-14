.class public abstract Ls/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls/a$a;
    }
.end annotation


# static fields
.field public static final a:Ls/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls/a$a;-><init>(Lw0/g;)V

    sput-object v0, Ls/a;->a:Ls/a$a;

    return-void
.end method
