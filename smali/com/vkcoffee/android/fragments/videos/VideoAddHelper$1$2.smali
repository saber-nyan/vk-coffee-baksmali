.class Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;
.super Ljava/lang/Object;
.source "VideoAddHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->success(Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

.field final synthetic val$dlg:Landroid/app/AlertDialog;

.field final synthetic val$oldStates:[Z

.field final synthetic val$result:Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;

.field final synthetic val$states:[Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;[Z[ZLcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->val$states:[Z

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->val$oldStates:[Z

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->val$result:Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;

    iput-object p5, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->val$dlg:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    const/4 v1, -0x2

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v5, "remove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->val$states:[Z

    array-length v0, v0

    if-ge v6, v0, :cond_5

    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->val$states:[Z

    aget-boolean v0, v0, v6

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->val$oldStates:[Z

    aget-boolean v2, v2, v6

    if-eq v0, v2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->val$video:Lcom/vkcoffee/android/api/VideoFile;

    iget v0, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget v2, v2, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->val$targetID:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    :goto_1
    sub-int v7, v6, v0

    .line 83
    .local v7, "index":I
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->val$oldStates:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_3

    .line 84
    if-ne v7, v3, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v7    # "index":I
    :cond_0
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 84
    .restart local v7    # "index":I
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->val$result:Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;

    iget-object v0, v0, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;->userAlbums:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/VideoAlbum;

    iget v0, v0, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    goto :goto_2

    .line 86
    :cond_3
    if-ne v7, v3, :cond_4

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->val$result:Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;

    iget-object v0, v0, Lcom/vkcoffee/android/api/video/VideoGetAlbumsByVideo$Result;->userAlbums:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/VideoAlbum;

    iget v0, v0, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    goto :goto_4

    .line 90
    .end local v7    # "index":I
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 91
    :cond_6
    new-instance v0, Lcom/vkcoffee/android/api/video/VideoSetAlbums;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget v1, v1, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->val$targetID:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->val$video:Lcom/vkcoffee/android/api/VideoFile;

    iget v2, v2, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget-object v3, v3, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->val$video:Lcom/vkcoffee/android/api/VideoFile;

    iget v3, v3, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/video/VideoSetAlbums;-><init>(IIILjava/util/List;Ljava/util/List;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;

    .line 92
    invoke-static {v2}, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;->access$000(Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;-><init>(Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/video/VideoSetAlbums;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;

    .line 102
    invoke-static {v1}, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;->access$000(Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 103
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/os/Looper;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 107
    :goto_5
    return-void

    .line 105
    :cond_7
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->val$dlg:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    goto :goto_5
.end method
