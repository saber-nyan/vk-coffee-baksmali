.class public interface abstract Lme/grishka/appkit/views/SwipeRefreshLayoutI;
.super Ljava/lang/Object;
.source "SwipeRefreshLayoutI.java"


# virtual methods
.method public abstract getVisibility()I
.end method

.method public abstract isReversed()Z
.end method

.method public abstract post(Ljava/lang/Runnable;)Z
.end method

.method public varargs abstract setColorSchemeResources([I)V
    .param p1    # [I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
.end method

.method public abstract setEnabled(Z)V
.end method

.method public abstract setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V
.end method

.method public abstract setRefreshing(Z)V
.end method

.method public abstract setReversed(Z)V
.end method

.method public abstract setVisibility(I)V
.end method
