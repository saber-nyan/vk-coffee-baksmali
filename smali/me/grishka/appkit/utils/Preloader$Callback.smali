.class public interface abstract Lme/grishka/appkit/utils/Preloader$Callback;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/utils/Preloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract isDataLoading()Z
.end method

.method public abstract isRefreshing()Z
.end method

.method public abstract loadData(II)V
.end method

.method public abstract onAppendItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public abstract onClearItems()V
.end method

.method public abstract updateList()V
.end method
