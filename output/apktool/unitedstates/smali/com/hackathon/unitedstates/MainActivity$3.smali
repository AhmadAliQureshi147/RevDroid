.class Lcom/hackathon/unitedstates/MainActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hackathon/unitedstates/MainActivity;->sendSecureRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hackathon/unitedstates/MainActivity;


# direct methods
.method public constructor <init>(Lcom/hackathon/unitedstates/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hackathon/unitedstates/MainActivity$3;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lokhttp3/Response;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hackathon/unitedstates/MainActivity$3;->lambda$onResponse$2(Lokhttp3/Response;)V

    return-void
.end method

.method public static synthetic b(Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hackathon/unitedstates/MainActivity$3;->lambda$onFailure$0(Ljava/io/IOException;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hackathon/unitedstates/MainActivity$3;->lambda$onResponse$1(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onFailure$0(Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$onResponse$1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$onResponse$2(Lokhttp3/Response;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hackathon/unitedstates/MainActivity$3;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 2
    .line 3
    new-instance v0, Lcom/hackathon/unitedstates/d;

    .line 4
    .line 5
    invoke-direct {v0, p2}, Lcom/hackathon/unitedstates/d;-><init>(Ljava/io/IOException;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p2, p0, Lcom/hackathon/unitedstates/MainActivity$3;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 16
    .line 17
    new-instance v0, Lcom/hackathon/unitedstates/e;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Lcom/hackathon/unitedstates/e;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/hackathon/unitedstates/MainActivity$3;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 27
    .line 28
    new-instance v0, Lcom/hackathon/unitedstates/f;

    .line 29
    .line 30
    invoke-direct {v0, p2}, Lcom/hackathon/unitedstates/f;-><init>(Lokhttp3/Response;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method
