.class Lcom/hackathon/unitedstates/MainActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hackathon/unitedstates/MainActivity;->sendLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/hackathon/unitedstates/MainActivity$2;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lorg/json/JSONException;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hackathon/unitedstates/MainActivity$2;->lambda$onResponse$1(Lorg/json/JSONException;)V

    return-void
.end method

.method public static synthetic b(Lokhttp3/Response;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hackathon/unitedstates/MainActivity$2;->lambda$onResponse$2(Lokhttp3/Response;)V

    return-void
.end method

.method public static synthetic c(Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hackathon/unitedstates/MainActivity$2;->lambda$onFailure$0(Ljava/io/IOException;)V

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

.method private static synthetic lambda$onResponse$1(Lorg/json/JSONException;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$onResponse$2(Lokhttp3/Response;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hackathon/unitedstates/MainActivity$2;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 2
    .line 3
    new-instance v0, Lcom/hackathon/unitedstates/c;

    .line 4
    .line 5
    invoke-direct {v0, p2}, Lcom/hackathon/unitedstates/c;-><init>(Ljava/io/IOException;)V

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
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string p1, "token"

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/hackathon/unitedstates/MainActivity$2;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 27
    .line 28
    invoke-static {p2, p1}, Lcom/hackathon/unitedstates/MainActivity;->access$300(Lcom/hackathon/unitedstates/MainActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    iget-object p2, p0, Lcom/hackathon/unitedstates/MainActivity$2;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 34
    .line 35
    new-instance v0, Lcom/hackathon/unitedstates/a;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Lcom/hackathon/unitedstates/a;-><init>(Lorg/json/JSONException;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/hackathon/unitedstates/MainActivity$2;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 45
    .line 46
    new-instance v0, Lcom/hackathon/unitedstates/b;

    .line 47
    .line 48
    invoke-direct {v0, p2}, Lcom/hackathon/unitedstates/b;-><init>(Lokhttp3/Response;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method
