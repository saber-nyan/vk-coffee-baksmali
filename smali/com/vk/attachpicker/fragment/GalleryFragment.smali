.class public Lcom/vk/attachpicker/fragment/GalleryFragment;
.super Landroid/app/Fragment;
.source "GalleryFragment.java"

# interfaces
.implements Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;
.implements Lcom/vk/attachpicker/SupportExternalToolbarContainer;


# static fields
.field private static final GALLERY_PHOTO_INTENT:I = 0x2

.field private static final GALLERY_VIDEO_INTENT:I = 0x3


# instance fields
.field private adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

.field private gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

.field private mediaType:I

.field private preventStyling:Z

.field private progressView:Lcom/vk/attachpicker/widget/ContextProgressView;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final selectionUpdateListener:Lcom/vk/attachpicker/events/NotificationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vk/attachpicker/events/NotificationListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private singleMode:Z

.field private spinner:Lcom/vk/attachpicker/widget/CustomSpinner;

.field private spinnerAdapter:Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;

.field private spinnerContainer:Landroid/widget/FrameLayout;

.field private thumb:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->preventStyling:Z

    .line 53
    iput-boolean v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->singleMode:Z

    .line 54
    const/16 v0, 0xde

    iput v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->mediaType:I

    .line 55
    iput-boolean v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->thumb:Z

    .line 421
    invoke-static {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$1;->lambdaFactory$(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/events/NotificationListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->selectionUpdateListener:Lcom/vk/attachpicker/events/NotificationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/widget/ContextProgressView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/fragment/GalleryFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->progressView:Lcom/vk/attachpicker/widget/ContextProgressView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vk/attachpicker/fragment/GalleryFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/fragment/GalleryFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/fragment/GalleryFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinnerAdapter:Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/widget/CustomSpinner;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/fragment/GalleryFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinner:Lcom/vk/attachpicker/widget/CustomSpinner;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/fragment/GalleryFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/fragment/GalleryFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    return-object v0
.end method

.method static synthetic access$502(Lcom/vk/attachpicker/fragment/GalleryFragment;Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;)Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;
    .locals 0
    .param p0, "x0"    # Lcom/vk/attachpicker/fragment/GalleryFragment;
    .param p1, "x1"    # Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/vk/attachpicker/fragment/GalleryFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vk/attachpicker/fragment/GalleryFragment;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->thumb:Z

    return v0
.end method

.method private dispatchTakePictureIntent()V
    .locals 4

    .prologue
    .line 404
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v1, "takePictureIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 406
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/vk/attachpicker/util/CameraUtils;->getCameraRequestData(Z)Landroid/support/v4/util/Pair;

    move-result-object v0

    .line 407
    .local v0, "request":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Integer;Ljava/io/File;>;"
    const-string/jumbo v3, "output"

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 408
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 410
    .end local v0    # "request":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Integer;Ljava/io/File;>;"
    :cond_0
    return-void
.end method

.method private dispatchTakeVideoIntent()V
    .locals 4

    .prologue
    .line 413
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v1, "takePictureIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 415
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/vk/attachpicker/util/CameraUtils;->getCameraRequestData(Z)Landroid/support/v4/util/Pair;

    move-result-object v0

    .line 416
    .local v0, "request":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Integer;Ljava/io/File;>;"
    const-string/jumbo v3, "output"

    iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 417
    iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 419
    .end local v0    # "request":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Integer;Ljava/io/File;>;"
    :cond_0
    return-void
.end method

.method private initSpinner(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vk/attachpicker/mediastore/AlbumEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/mediastore/AlbumEntry;>;"
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 170
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {v1}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 178
    new-instance v1, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;

    iget v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->mediaType:I

    invoke-direct {v1, v0, p1, v2}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    iput-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinnerAdapter:Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;

    .line 179
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinnerAdapter:Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;

    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinner:Lcom/vk/attachpicker/widget/CustomSpinner;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;->setSpinner(Landroid/widget/Spinner;)V

    .line 180
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinner:Lcom/vk/attachpicker/widget/CustomSpinner;

    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinnerAdapter:Lcom/vk/attachpicker/adapter/AlbumPickSpinnerAdapter;

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/CustomSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 181
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinner:Lcom/vk/attachpicker/widget/CustomSpinner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/CustomSpinner;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinner:Lcom/vk/attachpicker/widget/CustomSpinner;

    new-instance v2, Lcom/vk/attachpicker/fragment/GalleryFragment$2;

    invoke-direct {v2, p0}, Lcom/vk/attachpicker/fragment/GalleryFragment$2;-><init>(Lcom/vk/attachpicker/fragment/GalleryFragment;)V

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/widget/CustomSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method private loadMediastore()V
    .locals 2

    .prologue
    .line 225
    iget v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->mediaType:I

    invoke-static {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$5;->lambdaFactory$(Lcom/vk/attachpicker/fragment/GalleryFragment;)Lcom/vk/attachpicker/mediastore/MediaStoreController$MediaStoreCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/mediastore/MediaStoreController;->load(ILcom/vk/attachpicker/mediastore/MediaStoreController$MediaStoreCallback;)V

    .line 239
    return-void
.end method


# virtual methods
.method public getPlaceForPhoto(I)Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;
    .locals 8
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 274
    iget-object v6, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v6}, Landroid/support/v7/widget/GridLayoutManager;->findFirstVisibleItemPosition()I

    move-result v6

    iget-object v7, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {v7}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->delta()I

    move-result v7

    sub-int v0, v6, v7

    .line 275
    .local v0, "firstPosition":I
    sub-int v5, p1, v0

    .line 276
    .local v5, "wantedChild":I
    if-ltz v5, :cond_0

    iget-object v6, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    if-lt v5, v6, :cond_2

    .line 277
    :cond_0
    const-string/jumbo v6, "GalleryFragment"

    const-string/jumbo v7, "Unable to getTexture imageView for desired position, because it\'s not being displayed on screen."

    invoke-static {v6, v7}, Lcom/vk/attachpicker/util/L;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 298
    :cond_1
    :goto_0
    return-object v3

    .line 280
    :cond_2
    iget-object v6, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, "view":Landroid/view/View;
    move-object v2, v4

    .line 281
    check-cast v2, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;

    .line 282
    .local v2, "imageView":Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;
    if-eqz v2, :cond_1

    .line 283
    new-instance v3, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;

    invoke-direct {v3}, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;-><init>()V

    .line 284
    .local v3, "object":Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;
    iput-object v2, v3, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->imageView:Lcom/vk/attachpicker/widget/LocalImageView;

    .line 285
    iput-object v4, v3, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->containerView:Landroid/view/View;

    .line 286
    iget-object v6, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object v6, v3, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 287
    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getStoreEntry()Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    move-result-object v1

    .line 289
    .local v1, "imageEntry":Lcom/vk/attachpicker/mediastore/MediaStoreEntry;
    sget-object v6, Lcom/vk/attachpicker/Picker;->imageCache:Lcom/vk/attachpicker/util/ImageCache;

    invoke-virtual {v1}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->getDisplayImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vk/attachpicker/util/ImageCache;->get(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v3, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 290
    iget-object v6, v3, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    if-nez v6, :cond_1

    .line 291
    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/MediaStoreItemSmallView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v3, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 292
    iget-object v6, v3, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    if-nez v6, :cond_1

    .line 293
    sget-object v6, Lcom/vk/attachpicker/Picker;->imageCache:Lcom/vk/attachpicker/util/ImageCache;

    invoke-virtual {v1}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->getThumbnailImageKey()Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vk/attachpicker/util/ImageCache;->get(Lcom/vk/attachpicker/util/ImageCache$ImageCacheKey;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v3, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method synthetic lambda$loadMediastore$27(Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "mediaStore"    # Ljava/util/ArrayList;

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->progressView:Lcom/vk/attachpicker/widget/ContextProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/ContextProgressView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 229
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {v0, v2}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->setEmptyEnabled(Z)V

    .line 231
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vk/attachpicker/mediastore/AlbumEntry;

    invoke-virtual {v0}, Lcom/vk/attachpicker/mediastore/AlbumEntry;->getBucketImages()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->setImages(Ljava/util/ArrayList;)V

    .line 236
    :goto_0
    invoke-direct {p0, p1}, Lcom/vk/attachpicker/fragment/GalleryFragment;->initSpinner(Ljava/util/ArrayList;)V

    .line 238
    :cond_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->setEmptyEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->setImages(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method synthetic lambda$new$29(IILjava/lang/Void;)V
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "eventId"    # I
    .param p3, "eventArgs"    # Ljava/lang/Void;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {v0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->notifyDataSetChanged()V

    .line 425
    :cond_0
    return-void
.end method

.method synthetic lambda$onActivityResult$28(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->loadMediastore()V

    return-void
.end method

.method synthetic lambda$onViewCreated$24(Lcom/vk/attachpicker/SelectionContext;I)V
    .locals 9
    .param p2, "position"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 124
    .local v8, "a":Landroid/app/Activity;
    if-eqz v8, :cond_1

    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {v2}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->delta()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->getItem(I)Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/mediastore/MediaStoreEntry;->isCorrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    invoke-direct {v1, v8}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    invoke-virtual {v1}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    invoke-virtual {v1}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->show()V

    .line 131
    new-instance v0, Lcom/vk/attachpicker/screen/ViewerScreen;

    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {v1}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->getItemsCopy()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {v2}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->delta()I

    move-result v2

    sub-int v2, p2, v2

    iget-boolean v5, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->preventStyling:Z

    iget-boolean v6, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->singleMode:Z

    iget-boolean v7, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->thumb:Z

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/vk/attachpicker/screen/ViewerScreen;-><init>(Ljava/util/ArrayList;ILcom/vk/attachpicker/SelectionContext;Lcom/vk/attachpicker/screen/ViewerScreen$PhotoViewerProvider;ZZZ)V

    .line 133
    .local v0, "screen":Lcom/vk/attachpicker/screen/ViewerScreen;
    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    .line 134
    invoke-virtual {v0}, Lcom/vk/attachpicker/screen/ViewerScreen;->animateIn()V

    .line 137
    .end local v0    # "screen":Lcom/vk/attachpicker/screen/ViewerScreen;
    :cond_1
    return-void
.end method

.method synthetic lambda$onViewCreated$25(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->dispatchTakePictureIntent()V

    .line 160
    return-void
.end method

.method synthetic lambda$onViewCreated$26(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->dispatchTakeVideoIntent()V

    .line 163
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 327
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    .line 335
    invoke-static {p1}, Lcom/vk/attachpicker/util/CameraUtils;->isRequestValid(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 336
    invoke-static {p1}, Lcom/vk/attachpicker/util/CameraUtils;->isVideoRequest(I)Z

    move-result v3

    .line 337
    .local v3, "isVideo":Z
    invoke-static {p1}, Lcom/vk/attachpicker/util/CameraUtils;->getFileById(I)Ljava/io/File;

    move-result-object v2

    .line 339
    .local v2, "file":Ljava/io/File;
    invoke-static {}, Lcom/vk/attachpicker/Picker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$6;->lambdaFactory$(Lcom/vk/attachpicker/fragment/GalleryFragment;)Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/vk/attachpicker/util/CameraUtils;->addMediaToGallery(Landroid/content/Context;Ljava/io/File;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 341
    :try_start_0
    iget-object v5, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    if-nez v5, :cond_2

    .line 342
    new-instance v5, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    .line 344
    :cond_2
    iget-object v5, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    invoke-virtual {v5}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 345
    iget-object v5, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    invoke-virtual {v5}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->show()V

    .line 348
    if-eqz v3, :cond_3

    .line 349
    new-instance v4, Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/vk/attachpicker/screen/TrimScreen;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/vk/attachpicker/screen/TrimScreen$Delegate;)V

    .line 353
    .local v4, "screen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    :goto_1
    iget-object v5, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    invoke-virtual {v5, v4}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->showScreen(Lcom/vk/attachpicker/simplescreen/BaseScreen;)V

    goto :goto_0

    .line 355
    .end local v4    # "screen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    :catch_0
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 351
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v4, Lcom/vk/attachpicker/screen/EditorScreen;

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->thumb:Z

    invoke-direct {v4, v2, v5, v6}, Lcom/vk/attachpicker/screen/EditorScreen;-><init>(Ljava/io/File;Lcom/vk/attachpicker/screen/EditorScreen$Delegate;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v4    # "screen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    goto :goto_1

    .line 359
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "isVideo":Z
    .end local v4    # "screen":Lcom/vk/attachpicker/simplescreen/BaseScreen;
    :cond_4
    const/4 v5, 0x2

    if-eq p1, v5, :cond_5

    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    .line 360
    :cond_5
    new-instance v5, Lcom/vk/attachpicker/fragment/GalleryFragment$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/vk/attachpicker/fragment/GalleryFragment$3;-><init>(Lcom/vk/attachpicker/fragment/GalleryFragment;ILandroid/app/Activity;)V

    invoke-static {v0, p3, v5}, Lcom/vk/attachpicker/util/IntentUtils;->handleResult(Landroid/app/Activity;Landroid/content/Intent;Lcom/vk/attachpicker/util/IntentUtils$ResolveCallback;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->selectionUpdateListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1, v2}, Lcom/vk/attachpicker/events/NotificationCenter;->addListener(ILcom/vk/attachpicker/events/NotificationListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "prevent_styling"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->preventStyling:Z

    .line 74
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "single_mode"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->singleMode:Z

    .line 75
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "media_type"

    const/16 v2, 0xde

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->mediaType:I

    .line 76
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "force_thumb"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->thumb:Z

    .line 78
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 83
    const v0, 0x7f030115

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->onDestroy()V

    .line 266
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->dismiss()V

    .line 268
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 269
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->selectionUpdateListener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/events/NotificationCenter;->removeListener(Lcom/vk/attachpicker/events/NotificationListener;)V

    .line 270
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 257
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->onPause()V

    .line 260
    :cond_0
    return-void
.end method

.method public onPhotoSelected(Lcom/vk/attachpicker/mediastore/MediaStoreEntry;)V
    .locals 0
    .param p1, "imageEntry"    # Lcom/vk/attachpicker/mediastore/MediaStoreEntry;

    .prologue
    .line 322
    return-void
.end method

.method public onPhotoSwitch(II)V
    .locals 4
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    .line 305
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getPlaceForPhoto(I)Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;

    move-result-object v1

    .line 310
    .local v1, "oldObject":Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;
    if-eqz v1, :cond_2

    .line 311
    iget-object v2, v1, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->containerView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :cond_2
    invoke-virtual {p0, p2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getPlaceForPhoto(I)Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;

    move-result-object v0

    .line 315
    .local v0, "newObject":Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;
    if-eqz v0, :cond_0

    .line 316
    iget-object v2, v0, Lcom/vk/attachpicker/screen/ViewerScreen$PlaceProviderObject;->containerView:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 245
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->imageViewer:Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;

    invoke-virtual {v0}, Lcom/vk/attachpicker/simplescreen/WindowScreenContainer;->onResume()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {v0}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->getImagesCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->loadMediastore()V

    .line 252
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x6f

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vk/attachpicker/fragment/GalleryFragment;->provideToolbar(Landroid/content/Context;)Landroid/view/ViewGroup;

    .line 90
    const v2, 0x7f1002f6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vk/attachpicker/widget/ContextProgressView;

    iput-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->progressView:Lcom/vk/attachpicker/widget/ContextProgressView;

    .line 91
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->progressView:Lcom/vk/attachpicker/widget/ContextProgressView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/ContextProgressView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v5, Lcom/vk/attachpicker/fragment/GalleryFragment$1;

    invoke-direct {v5, p0}, Lcom/vk/attachpicker/fragment/GalleryFragment$1;-><init>(Lcom/vk/attachpicker/fragment/GalleryFragment;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 108
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {v2, v5, v6}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 110
    const v2, 0x7f1002f7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 111
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->gridLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 112
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/vk/attachpicker/SelectionContext$SelectionContextProvider;

    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/vk/attachpicker/SelectionContext$SelectionContextProvider;

    invoke-interface {v2}, Lcom/vk/attachpicker/SelectionContext$SelectionContextProvider;->getSelectionContext()Lcom/vk/attachpicker/SelectionContext;

    move-result-object v1

    .line 120
    .local v1, "selectionContext":Lcom/vk/attachpicker/SelectionContext;
    :goto_0
    new-instance v2, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-boolean v6, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->singleMode:Z

    invoke-direct {v2, v5, v1, v6}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;-><init>(Landroid/content/Context;Lcom/vk/attachpicker/SelectionContext;Z)V

    iput-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    .line 121
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 122
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-static {p0, v1}, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$2;->lambdaFactory$(Lcom/vk/attachpicker/fragment/GalleryFragment;Lcom/vk/attachpicker/SelectionContext;)Lcom/vk/attachpicker/widget/OnItemClickListener;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->setItemClickListener(Lcom/vk/attachpicker/widget/OnItemClickListener;)V

    .line 142
    iget v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->mediaType:I

    if-ne v2, v7, :cond_2

    .line 143
    invoke-static {}, Lcom/vk/attachpicker/mediastore/MediaStoreController;->lastLoadedPhotoVideo()Ljava/util/ArrayList;

    move-result-object v0

    .line 151
    .local v0, "lastLoadedMediaStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/mediastore/AlbumEntry;>;"
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->progressView:Lcom/vk/attachpicker/widget/ContextProgressView;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/vk/attachpicker/widget/ContextProgressView;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 154
    iget-object v5, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vk/attachpicker/mediastore/AlbumEntry;

    invoke-virtual {v2}, Lcom/vk/attachpicker/mediastore/AlbumEntry;->getBucketImages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->setImages(Ljava/util/ArrayList;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->initSpinner(Ljava/util/ArrayList;)V

    .line 157
    :cond_0
    iget-object v5, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    iget v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->mediaType:I

    if-ne v2, v7, :cond_5

    invoke-static {}, Lcom/vk/attachpicker/util/CameraUtils;->isDeviceHasCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->setCameraEnabled(Z)V

    .line 158
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-static {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$3;->lambdaFactory$(Lcom/vk/attachpicker/fragment/GalleryFragment;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->setPhotoClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->adapter:Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;

    invoke-static {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment$$Lambda$4;->lambdaFactory$(Lcom/vk/attachpicker/fragment/GalleryFragment;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/adapter/PhotoSmallAdapter;->setVideoClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-direct {p0}, Lcom/vk/attachpicker/fragment/GalleryFragment;->loadMediastore()V

    .line 166
    return-void

    .line 118
    .end local v0    # "lastLoadedMediaStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/mediastore/AlbumEntry;>;"
    .end local v1    # "selectionContext":Lcom/vk/attachpicker/SelectionContext;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "selectionContext":Lcom/vk/attachpicker/SelectionContext;
    goto :goto_0

    .line 144
    :cond_2
    iget v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->mediaType:I

    const/16 v5, 0x14d

    if-ne v2, v5, :cond_3

    .line 145
    invoke-static {}, Lcom/vk/attachpicker/mediastore/MediaStoreController;->lastLoadedVideo()Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0    # "lastLoadedMediaStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/mediastore/AlbumEntry;>;"
    goto :goto_1

    .line 146
    .end local v0    # "lastLoadedMediaStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/mediastore/AlbumEntry;>;"
    :cond_3
    iget v2, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->mediaType:I

    const/16 v5, 0xde

    if-ne v2, v5, :cond_4

    .line 147
    invoke-static {}, Lcom/vk/attachpicker/mediastore/MediaStoreController;->lastLoadedPhoto()Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0    # "lastLoadedMediaStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/mediastore/AlbumEntry;>;"
    goto :goto_1

    .line 149
    .end local v0    # "lastLoadedMediaStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/mediastore/AlbumEntry;>;"
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "lastLoadedMediaStore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vk/attachpicker/mediastore/AlbumEntry;>;"
    goto :goto_1

    :cond_5
    move v2, v4

    .line 157
    goto :goto_2
.end method

.method public provideToolbar(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x10

    const/4 v3, 0x0

    .line 393
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinnerContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinnerContainer:Landroid/widget/FrameLayout;

    .line 395
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinnerContainer:Landroid/widget/FrameLayout;

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v1

    invoke-static {v2}, Lcom/vk/attachpicker/util/Screen;->dp(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 396
    new-instance v0, Lcom/vk/attachpicker/widget/CustomSpinner;

    invoke-direct {v0, p1}, Lcom/vk/attachpicker/widget/CustomSpinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinner:Lcom/vk/attachpicker/widget/CustomSpinner;

    .line 397
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinner:Lcom/vk/attachpicker/widget/CustomSpinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vk/attachpicker/widget/CustomSpinner;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinnerContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinner:Lcom/vk/attachpicker/widget/CustomSpinner;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/fragment/GalleryFragment;->spinnerContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method
