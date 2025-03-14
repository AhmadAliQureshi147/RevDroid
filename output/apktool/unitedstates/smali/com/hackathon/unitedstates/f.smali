.class public final synthetic Lcom/hackathon/unitedstates/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lokhttp3/Response;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/Response;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hackathon/unitedstates/f;->a:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hackathon/unitedstates/f;->a:Lokhttp3/Response;

    invoke-static {v0}, Lcom/hackathon/unitedstates/MainActivity$3;->a(Lokhttp3/Response;)V

    return-void
.end method
