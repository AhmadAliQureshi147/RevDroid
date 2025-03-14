.class public Lcom/hackathon/walktalk/ResponseMessage;
.super Ljava/lang/Object;
.source "ResponseMessage.java"


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/hackathon/walktalk/ResponseMessage;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/hackathon/walktalk/ResponseMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/hackathon/walktalk/ResponseMessage;->message:Ljava/lang/String;

    return-void
.end method
