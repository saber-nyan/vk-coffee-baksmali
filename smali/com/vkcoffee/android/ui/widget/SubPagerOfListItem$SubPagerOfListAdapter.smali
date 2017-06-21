.class public abstract Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SubPagerOfListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SubPagerOfListAdapter"
.end annotation


# instance fields
.field private isShowFirstItemMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->isShowFirstItemMode:Z

    return-void
.end method


# virtual methods
.method public abstract getTitle()Ljava/lang/String;
.end method

.method public isShowFirstItemMode()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->isShowFirstItemMode:Z

    return v0
.end method

.method public onScroll(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 39
    return-void
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "scrollState"    # I

    .prologue
    .line 36
    return-void
.end method

.method public setIsShowFirstItemMode(Z)V
    .locals 0
    .param p1, "isShowFirstItemMode"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/vkcoffee/android/ui/widget/SubPagerOfListItem$SubPagerOfListAdapter;->isShowFirstItemMode:Z

    .line 31
    return-void
.end method
