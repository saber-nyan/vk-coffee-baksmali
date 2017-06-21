.class Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/PhotoViewer$PhotoViewerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfilePhotoViewerCallback"
.end annotation


# instance fields
.field private loading:Z

.field private offset:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

.field private total:I

.field public viewer:Lcom/vkcoffee/android/PhotoViewer;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;II)V
    .locals 1
    .param p2, "offset"    # I
    .param p3, "total"    # I

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->loading:Z

    .line 1176
    iput p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->offset:I

    .line 1177
    iput p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->total:I

    .line 1178
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;)I
    .locals 1

    .prologue
    .line 1171
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->offset:I

    return v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;I)V
    .locals 0

    .prologue
    .line 1171
    iput p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->offset:I

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;I)V
    .locals 0

    .prologue
    .line 1172
    iput p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->total:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;Z)V
    .locals 0

    .prologue
    .line 1170
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->loading:Z

    return-void
.end method


# virtual methods
.method public getPhotoBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "outClip"    # Landroid/graphics/Rect;

    .prologue
    .line 1181
    return-void
.end method

.method public isMoreAvailable()Z
    .locals 2

    .prologue
    .line 1184
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->offset:I

    iget v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->total:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMore()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1188
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->loading:Z

    if-nez v0, :cond_0

    .line 1189
    iput-boolean v5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->loading:Z

    .line 1190
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosGet;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->access$1(Lcom/vkcoffee/android/fragments/ProfileFragment;)I

    move-result v1

    const/4 v2, -0x6

    iget v3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->offset:I

    const/16 v4, 0x64

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/photos/PhotosGet;-><init>(IIIIZ)V

    new-instance v1, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosGet;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 1201
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ProfilePhotoViewerCallback;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1203
    :cond_0
    return-void
.end method

.method public onDismissed()V
    .locals 0

    .prologue
    .line 1206
    return-void
.end method
