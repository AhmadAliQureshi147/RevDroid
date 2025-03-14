.class final Ld1/l1$a;
.super Ld1/k1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld1/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final i:Ld1/l1;

.field private final j:Ld1/l1$b;

.field private final k:Ld1/q;

.field private final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ld1/l1;Ld1/l1$b;Ld1/q;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld1/k1;-><init>()V

    iput-object p1, p0, Ld1/l1$a;->i:Ld1/l1;

    iput-object p2, p0, Ld1/l1$a;->j:Ld1/l1$b;

    iput-object p3, p0, Ld1/l1$a;->k:Ld1/q;

    iput-object p4, p0, Ld1/l1$a;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ld1/l1$a;->w(Ljava/lang/Throwable;)V

    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ld1/l1$a;->i:Ld1/l1;

    iget-object v0, p0, Ld1/l1$a;->j:Ld1/l1$b;

    iget-object v1, p0, Ld1/l1$a;->k:Ld1/q;

    iget-object v2, p0, Ld1/l1$a;->l:Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Ld1/l1;->D(Ld1/l1;Ld1/l1$b;Ld1/q;Ljava/lang/Object;)V

    return-void
.end method
