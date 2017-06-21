.class Lcom/vk/attachpicker/screen/ViewerScreen$10;
.super Lcom/vk/attachpicker/widget/ViewPagerAdapter;
.source "ViewerScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/screen/ViewerScreen;->initPagerAdapter(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

.field final synthetic val$photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/ViewerScreen;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/ViewerScreen;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/vk/attachpicker/screen/ViewerScreen$10;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    iput-object p2, p0, Lcom/vk/attachpicker/screen/ViewerScreen$10;->val$photos:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/vk/attachpicker/widget/ViewPagerAdapter;-><init>()V

    .line 824
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$10;->this$0:Lcom/vk/attachpicker/screen/ViewerScreen;

    invoke-static {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->access$800(Lcom/vk/attachpicker/screen/ViewerScreen;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$10;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/vk/attachpicker/screen/ViewerScreen$10;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/support/v4/view/ViewPager;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "pager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    const/4 v5, 0x0

    .line 828
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vk/attachpicker/screen/ViewerScreen$10;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 830
    .local v1, "fl":Landroid/widget/FrameLayout;
    iget-object v4, p0, Lcom/vk/attachpicker/screen/ViewerScreen$10;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .line 831
    .local v0, "entry":Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    new-instance v2, Lcom/vk/attachpicker/widget/ImageViewerImageView;

    iget-object v4, p0, Lcom/vk/attachpicker/screen/ViewerScreen$10;->activity:Landroid/app/Activity;

    invoke-direct {v2, v4, p1}, Lcom/vk/attachpicker/widget/ImageViewerImageView;-><init>(Landroid/content/Context;I)V

    .line 832
    .local v2, "iv":Lcom/vk/attachpicker/widget/ImageViewerImageView;
    iget-object v4, p0, Lcom/vk/attachpicker/screen/ViewerScreen$10;->val$photos:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    invoke-virtual {v2, v4}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->displayImage(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)V

    .line 833
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 835
    invoke-virtual {v0}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isCorrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 836
    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getPhotoViewAttacher()Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 838
    :cond_0
    iget-boolean v4, v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isVideo:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isCorrupted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 839
    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/ImageViewerImageView;->getPhotoViewAttacher()Lcom/vk/attachpicker/photoview/PhotoViewAttacher;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/vk/attachpicker/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 841
    new-instance v3, Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    iget-object v4, p0, Lcom/vk/attachpicker/screen/ViewerScreen$10;->activity:Landroid/app/Activity;

    iget-object v5, v0, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->path:Landroid/net/Uri;

    invoke-direct {v3, v4, v5, p1}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 842
    .local v3, "videoPlayer":Lcom/vk/attachpicker/widget/PagerVideoPlayer;
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 844
    .end local v3    # "videoPlayer":Lcom/vk/attachpicker/widget/PagerVideoPlayer;
    :cond_1
    return-object v1
.end method
