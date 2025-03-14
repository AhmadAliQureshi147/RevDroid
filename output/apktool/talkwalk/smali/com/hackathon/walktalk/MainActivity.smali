.class public Lcom/hackathon/walktalk/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private generateRandomString(I)Ljava/lang/String;
    .locals 4

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    const/16 v3, 0x1a

    .line 72
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-static {p0}, Landroidx/activity/EdgeToEdge;->enable(Landroidx/activity/ComponentActivity;)V

    .line 23
    sget p1, Lcom/hackathon/walktalk/R$layout;->activity_main:I

    invoke-virtual {p0, p1}, Lcom/hackathon/walktalk/MainActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/hackathon/walktalk/MainActivity;->rootChecker()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/hackathon/walktalk/MainActivity;->finish()V

    .line 28
    invoke-virtual {p0}, Lcom/hackathon/walktalk/MainActivity;->finishAffinity()V

    const/4 p1, 0x0

    .line 29
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 31
    new-instance p1, Lretrofit2/Retrofit$Builder;

    invoke-direct {p1}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v0, "http://3.146.114.36:5000/"

    .line 32
    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 33
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p1

    .line 36
    const-class v0, Lcom/hackathon/walktalk/ApiService;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hackathon/walktalk/ApiService;

    const/16 v0, 0x31f

    .line 38
    invoke-direct {p0, v0}, Lcom/hackathon/walktalk/MainActivity;->generateRandomString(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-interface {p1, v0}, Lcom/hackathon/walktalk/ApiService;->sendData(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/hackathon/walktalk/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/hackathon/walktalk/MainActivity$1;-><init>(Lcom/hackathon/walktalk/MainActivity;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method rootChecker()Z
    .locals 1

    .line 79
    new-instance v0, Lcom/hackathon/walktalk/rooter;

    invoke-direct {v0}, Lcom/hackathon/walktalk/rooter;-><init>()V

    .line 80
    invoke-virtual {v0}, Lcom/hackathon/walktalk/rooter;->isRootedOrEmulated()Z

    move-result v0

    return v0
.end method
