.class Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    .line 98
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 101
    const-string v5, "com.vkcoffee.android.PHOTO_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "aid"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v6, v6, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    if-ne v5, v6, :cond_0

    .line 102
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v6

    const-string v5, "photo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/Photo;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$1(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    .line 104
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v3, v5, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 105
    .local v3, "photoAlbum":Lcom/vkcoffee/android/api/PhotoAlbum;
    iget v5, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 106
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->updateList()V

    .line 108
    .end local v3    # "photoAlbum":Lcom/vkcoffee/android/api/PhotoAlbum;
    :cond_0
    const-string v5, "com.vkcoffee.android.PHOTO_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "aid"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v6, v6, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    if-ne v5, v6, :cond_2

    .line 109
    const-string v5, "pid"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 110
    .local v4, "pid":I
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 111
    .local v1, "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 120
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$1(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    .line 121
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->updateList()V

    .line 122
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->onPhotoRemoved()V

    .line 124
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v4    # "pid":I
    :cond_2
    const-string v5, "com.vkcoffee.android.UPDATE_PHOTO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "aid"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v6, v6, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    iget v6, v6, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    if-ne v5, v6, :cond_3

    .line 125
    const-string v5, "photo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/Photo;

    .line 126
    .local v2, "photo":Lcom/vkcoffee/android/Photo;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_5

    .line 135
    .end local v0    # "i":I
    .end local v2    # "photo":Lcom/vkcoffee/android/Photo;
    :cond_3
    :goto_2
    return-void

    .line 112
    .restart local v1    # "it":Ljava/util/Iterator;
    .restart local v4    # "pid":I
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/Photo;

    .line 113
    .restart local v2    # "photo":Lcom/vkcoffee/android/Photo;
    iget v5, v2, Lcom/vkcoffee/android/Photo;->id:I

    if-ne v5, v4, :cond_1

    .line 114
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    iget-object v3, v5, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->album:Lcom/vkcoffee/android/api/PhotoAlbum;

    .line 116
    .restart local v3    # "photoAlbum":Lcom/vkcoffee/android/api/PhotoAlbum;
    iget v5, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    goto :goto_0

    .line 127
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v3    # "photoAlbum":Lcom/vkcoffee/android/api/PhotoAlbum;
    .end local v4    # "pid":I
    .restart local v0    # "i":I
    :cond_5
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/Photo;

    iget v5, v5, Lcom/vkcoffee/android/Photo;->id:I

    iget v6, v2, Lcom/vkcoffee/android/Photo;->id:I

    if-ne v5, v6, :cond_6

    .line 128
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/Photo;

    iget-object v6, v2, Lcom/vkcoffee/android/Photo;->descr:Ljava/lang/String;

    iput-object v6, v5, Lcom/vkcoffee/android/Photo;->descr:Ljava/lang/String;

    .line 129
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/Photo;

    iget v6, v2, Lcom/vkcoffee/android/Photo;->nLikes:I

    iput v6, v5, Lcom/vkcoffee/android/Photo;->nLikes:I

    .line 130
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-static {v5}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;->access$0(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/Photo;

    iget-boolean v6, v2, Lcom/vkcoffee/android/Photo;->isLiked:Z

    iput-boolean v6, v5, Lcom/vkcoffee/android/Photo;->isLiked:Z

    goto :goto_2

    .line 126
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
