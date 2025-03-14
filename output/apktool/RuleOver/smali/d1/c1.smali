.class final Ld1/c1;
.super Ld1/g1;
.source "SourceFile"


# static fields
.field private static final j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile _invoked:I

.field private final i:Lv0/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Ld1/c1;

    const-string v1, "_invoked"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Ld1/c1;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lv0/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld1/g1;-><init>()V

    iput-object p1, p0, Ld1/c1;->i:Lv0/l;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ld1/c1;->w(Ljava/lang/Throwable;)V

    sget-object p1, Ll0/q;->a:Ll0/q;

    return-object p1
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Ld1/c1;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld1/c1;->i:Lv0/l;

    invoke-interface {v0, p1}, Lv0/l;->i(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
