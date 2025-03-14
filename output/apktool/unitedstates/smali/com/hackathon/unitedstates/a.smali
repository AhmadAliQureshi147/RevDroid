.class public final synthetic Lcom/hackathon/unitedstates/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/json/JSONException;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hackathon/unitedstates/a;->a:Lorg/json/JSONException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hackathon/unitedstates/a;->a:Lorg/json/JSONException;

    invoke-static {v0}, Lcom/hackathon/unitedstates/MainActivity$2;->a(Lorg/json/JSONException;)V

    return-void
.end method
