.class public interface abstract Landroidx/activity/contextaware/ContextAware;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V
    .param p1    # Landroidx/activity/contextaware/OnContextAvailableListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract peekAvailableContext()Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract removeOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V
    .param p1    # Landroidx/activity/contextaware/OnContextAvailableListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
