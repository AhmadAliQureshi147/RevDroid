.class Lf0/t$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg0/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/t$a;->b(Lf0/t$a$b;)Lg0/a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf0/t$a$b;

.field final synthetic b:Lf0/t$a;


# direct methods
.method constructor <init>(Lf0/t$a;Lf0/t$a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/t$a$a;->b:Lf0/t$a;

    iput-object p2, p0, Lf0/t$a$a;->a:Lf0/t$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf0/t$a$a;->b:Lf0/t$a;

    invoke-static {p1}, Lf0/t$a;->a(Lf0/t$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    iget-object v0, p0, Lf0/t$a$a;->a:Lf0/t$a$b;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lf0/t$a$a;->b:Lf0/t$a;

    invoke-static {p1}, Lf0/t$a;->a(Lf0/t$a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The queue becomes empty after removing config generation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lf0/t$a$a;->a:Lf0/t$a$b;

    iget v0, v0, Lf0/t$a$b;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsChannel"

    invoke-static {v0, p1}, Lx/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
