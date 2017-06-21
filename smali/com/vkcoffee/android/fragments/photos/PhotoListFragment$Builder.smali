.class public Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/api/PhotoAlbum;)V
    .locals 2
    .param p1, "album"    # Lcom/vkcoffee/android/api/PhotoAlbum;

    .prologue
    .line 142
    const-class v0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;)V

    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "album"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 144
    return-void
.end method


# virtual methods
.method public setSelect(Z)Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;
    .locals 2
    .param p1, "select"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "select"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    return-object p0
.end method
