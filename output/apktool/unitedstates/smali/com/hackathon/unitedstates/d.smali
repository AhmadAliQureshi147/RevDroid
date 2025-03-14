.class public final synthetic Lcom/hackathon/unitedstates/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hackathon/unitedstates/d;->a:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hackathon/unitedstates/d;->a:Ljava/io/IOException;

    invoke-static {v0}, Lcom/hackathon/unitedstates/MainActivity$3;->b(Ljava/io/IOException;)V

    return-void
.end method
