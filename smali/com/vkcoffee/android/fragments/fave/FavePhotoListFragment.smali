.class public Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;
.super Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
.source "FavePhotoListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 15
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;->loadData()V

    .line 20
    :goto_0
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/fave/FavePhotoListFragment;->dataLoaded()V

    goto :goto_0
.end method
