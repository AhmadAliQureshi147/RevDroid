.class Lcom/hackathon/unitedstates/MainActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hackathon/unitedstates/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/hackathon/unitedstates/MainActivity$1;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hackathon/unitedstates/MainActivity$1;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/hackathon/unitedstates/MainActivity;->access$000(Lcom/hackathon/unitedstates/MainActivity;)Landroid/widget/EditText;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/hackathon/unitedstates/MainActivity$1;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/hackathon/unitedstates/MainActivity;->access$100(Lcom/hackathon/unitedstates/MainActivity;)Landroid/widget/EditText;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Lcom/hackathon/unitedstates/User;

    .line 43
    .line 44
    invoke-direct {v1, p1, v0}, Lcom/hackathon/unitedstates/User;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/hackathon/unitedstates/User;->generateHMAC()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    iget-object v2, p0, Lcom/hackathon/unitedstates/MainActivity$1;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 54
    .line 55
    invoke-static {v2, p1, v0, v1}, Lcom/hackathon/unitedstates/MainActivity;->access$200(Lcom/hackathon/unitedstates/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/hackathon/unitedstates/MainActivity$1;->this$0:Lcom/hackathon/unitedstates/MainActivity;

    .line 60
    .line 61
    const-string v0, "Please enter both username and password"

    .line 62
    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_1
    return-void
.end method
