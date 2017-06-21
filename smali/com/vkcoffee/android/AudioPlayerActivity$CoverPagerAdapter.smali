.class Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerActivity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 131
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/AudioPlayerActivity;Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;)Lcom/vkcoffee/android/AudioPlayerActivity;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 176
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 177
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$3(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/util/SparseArray;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 178
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 179
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$1(Lcom/vkcoffee/android/AudioPlayerActivity;I)V

    .line 137
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$2(Lcom/vkcoffee/android/AudioPlayerActivity;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x2

    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v1}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$2(Lcom/vkcoffee/android/AudioPlayerActivity;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 145
    if-gtz p2, :cond_1

    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistLength()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 146
    .local v1, "realPos":I
    :goto_0
    add-int/lit8 p2, p2, -0x1

    .line 147
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    const v5, 0x7f03004f

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 148
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;->this$0:Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-static {v3}, Lcom/vkcoffee/android/AudioPlayerActivity;->access$3(Lcom/vkcoffee/android/AudioPlayerActivity;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistItem(I)Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    .line 151
    .local v0, "file":Lcom/vkcoffee/android/AudioFile;
    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/vkcoffee/android/AudioFile;

    .end local v0    # "file":Lcom/vkcoffee/android/AudioFile;
    invoke-direct {v0}, Lcom/vkcoffee/android/AudioFile;-><init>()V

    .restart local v0    # "file":Lcom/vkcoffee/android/AudioFile;
    :cond_0
    move-object v3, v2

    .line 154
    check-cast v3, Lcom/vkcoffee/android/ui/AlbumScrollView;

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/AlbumScrollView;->setEnabled(Z)V

    .line 155
    iget v3, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget v5, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    new-instance v6, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;

    invoke-direct {v6, p0, v2}, Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter$1;-><init>(Lcom/vkcoffee/android/AudioPlayerActivity$CoverPagerAdapter;Landroid/view/View;)V

    invoke-static {v3, v5, v4, v6}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 172
    return-object v2

    .line 145
    .end local v0    # "file":Lcom/vkcoffee/android/AudioFile;
    .end local v1    # "realPos":I
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v3}, Lcom/vkcoffee/android/AudioPlayerService;->getPlaylistLength()I

    move-result v3

    if-le p2, v3, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p2, -0x1

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 141
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
