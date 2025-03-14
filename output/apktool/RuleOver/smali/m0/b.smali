.class public abstract Lm0/b;
.super Lm0/a;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/b$a;
    }
.end annotation


# static fields
.field public static final e:Lm0/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm0/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm0/b$a;-><init>(Lw0/g;)V

    sput-object v0, Lm0/b;->e:Lm0/b$a;

    return-void
.end method
