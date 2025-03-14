.class final Ld1/d1;
.super Ld1/k1;
.source "SourceFile"


# instance fields
.field private final i:Lv0/l;


# direct methods
.method public constructor <init>(Lv0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld1/k1;-><init>()V

    iput-object p1, p0, Ld1/d1;->i:Lv0/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ld1/d1;->w(Ljava/lang/Throwable;)V

    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld1/d1;->i:Lv0/l;

    invoke-interface {v0, p1}, Lv0/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
