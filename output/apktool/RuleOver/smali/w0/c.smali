.class public abstract Lw0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La1/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw0/c$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field private transient e:La1/a;

.field protected final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Class;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lw0/c$a;->a()Lw0/c$a;

    move-result-object v0

    sput-object v0, Lw0/c;->k:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw0/c;->f:Ljava/lang/Object;

    iput-object p2, p0, Lw0/c;->g:Ljava/lang/Class;

    iput-object p3, p0, Lw0/c;->h:Ljava/lang/String;

    iput-object p4, p0, Lw0/c;->i:Ljava/lang/String;

    iput-boolean p5, p0, Lw0/c;->j:Z

    return-void
.end method


# virtual methods
.method public a()La1/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/c;->e:La1/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw0/c;->c()La1/a;

    move-result-object v0

    iput-object v0, p0, Lw0/c;->e:La1/a;

    :cond_0
    return-object v0
.end method

.method protected abstract c()La1/a;
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/c;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public h()La1/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lw0/c;->g:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lw0/c;->j:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lw0/r;->c(Ljava/lang/Class;)La1/d;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lw0/r;->b(Ljava/lang/Class;)La1/b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw0/c;->i:Ljava/lang/String;

    return-object v0
.end method
