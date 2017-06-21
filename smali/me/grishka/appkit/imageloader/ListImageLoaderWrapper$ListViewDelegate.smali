.class public interface abstract Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$ListViewDelegate;
.super Ljava/lang/Object;
.source "ListImageLoaderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/imageloader/ListImageLoaderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ListViewDelegate"
.end annotation


# virtual methods
.method public abstract getFirstVisiblePosition()I
.end method

.method public abstract getItemView(I)Landroid/view/View;
.end method

.method public abstract getLastVisiblePosition()I
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getVisibleItemCount()I
.end method

.method public abstract isVertical()Z
.end method

.method public abstract setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
.end method
